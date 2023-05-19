USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_match]    Script Date: 17/01/2022 09:54:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_match](
	[id_match] [int] NOT NULL,
	[id_team_home] [int] NULL,
	[id_team_away] [int] NULL,
	[id_referee] [int] NULL,
	[match_date] [datetime] NULL,
 CONSTRAINT [PK_soccer_match] PRIMARY KEY CLUSTERED 
(
	[id_match] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[soccer_match]  WITH CHECK ADD  CONSTRAINT [FK_soccer_match_soccer_referee] FOREIGN KEY([id_referee])
REFERENCES [dbo].[soccer_match_referee] ([id_referee])
GO

ALTER TABLE [dbo].[soccer_match] CHECK CONSTRAINT [FK_soccer_match_soccer_referee]
GO

ALTER TABLE [dbo].[soccer_match]  WITH CHECK ADD  CONSTRAINT [FK_soccer_match_soccer_team] FOREIGN KEY([id_team_away])
REFERENCES [dbo].[soccer_team] ([id_team])
GO

ALTER TABLE [dbo].[soccer_match] CHECK CONSTRAINT [FK_soccer_match_soccer_team]
GO

ALTER TABLE [dbo].[soccer_match]  WITH CHECK ADD  CONSTRAINT [FK_soccer_match_team_home] FOREIGN KEY([id_team_home])
REFERENCES [dbo].[soccer_team] ([id_team])
GO

ALTER TABLE [dbo].[soccer_match] CHECK CONSTRAINT [FK_soccer_match_team_home]
GO


