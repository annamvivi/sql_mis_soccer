USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_team_player]    Script Date: 17/01/2022 09:54:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_team_player](
	[id_player] [int] NOT NULL,
	[player_name] [varchar](1000) NULL,
	[id_team] [int] NULL,
	[jersey_no] [int] NULL,
	[position] [varchar](50) NULL,
	[date_of_birth] [date] NULL,
 CONSTRAINT [PK_soccer_team_player] PRIMARY KEY CLUSTERED 
(
	[id_player] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[soccer_team_player]  WITH CHECK ADD  CONSTRAINT [FK_soccer_team_player_soccer_team] FOREIGN KEY([id_team])
REFERENCES [dbo].[soccer_team] ([id_team])
GO

ALTER TABLE [dbo].[soccer_team_player] CHECK CONSTRAINT [FK_soccer_team_player_soccer_team]
GO


