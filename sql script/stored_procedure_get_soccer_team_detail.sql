CREATE PROCEDURE dbo.proc_get_soccer_team_detail
    @pi_team_name VARCHAR(20) = NULL,
    @pi_player_position VARCHAR(2) = NULL,
    @pi_player_age INT = NULL
AS
BEGIN
    SELECT t.team_name, c.coach_name, p.player_name, p.jersey_no, p.position, p.date_of_birth, DATEDIFF(YEAR, p.date_of_birth, GETDATE()) as player_age
    FROM soccer_team_player p
    INNER JOIN soccer_team t ON t.id_team = p.id_team 
	INNER JOIN soccer_team_coach c ON t.id_coach = c.id_coach
    WHERE (@pi_team_name IS NULL OR t.team_name = @pi_team_name)
        AND (@pi_player_position IS NULL OR p.position = @pi_player_position)
        AND (@pi_player_age IS NULL OR DATEDIFF(YEAR, p.date_of_birth, GETDATE()) = @pi_player_age)
END 


