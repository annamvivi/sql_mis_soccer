CREATE PROCEDURE dbo.proc_get_soccer_match_detail
    @pi_match_date DATE
AS
BEGIN
    SELECT
        m.match_date,
        r.referee_name,
        t_home.team_name AS team_name_home,
        t_away.team_name AS team_name_away,
        total_goal_home,
        total_goal_away,
        CASE
            WHEN total_goal_home > total_goal_away THEN 'Win'
            WHEN total_goal_home < total_goal_away THEN 'Lose'
            ELSE 'Draw'
        END AS result_home,
        CASE
            WHEN total_goal_away > total_goal_home THEN 'Win'
            WHEN total_goal_away < total_goal_home THEN 'Lose'
            ELSE 'Draw'
        END AS result_away
    FROM 
        soccer_match m
        INNER JOIN soccer_match_referee r ON m.id_referee = r.id_referee
        INNER JOIN (
            SELECT mtc.id_match, 
                t_home.team_name AS team_name_home, 
                COUNT(CASE WHEN tp.id_team = mtc.id_team_home THEN 1 END) AS total_goal_home,
                t_away.team_name AS team_name_away, 
                COUNT(CASE WHEN tp.id_team = mtc.id_team_away THEN 1 END) AS total_goal_away
            FROM soccer_match mtc
            INNER JOIN soccer_team t_home ON t_home.id_team = mtc.id_team_home
            INNER JOIN soccer_team t_away ON t_away.id_team = mtc.id_team_away
            INNER JOIN soccer_goal g ON g.id_match = mtc.id_match
            INNER JOIN soccer_team_player tp ON tp.id_player = g.id_player
            GROUP BY mtc.id_match, t_home.team_name, t_away.team_name
        ) AS g ON m.id_match = g.id_match
        INNER JOIN soccer_team t_home ON m.id_team_home = t_home.id_team
        INNER JOIN soccer_team t_away ON m.id_team_away = t_away.id_team
    WHERE
        m.match_date = @pi_match_date;
END
