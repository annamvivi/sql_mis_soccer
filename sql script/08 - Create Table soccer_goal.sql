USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_goal]    Script Date: 17/01/2022 09:54:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_goal](
	[id_goal] [int] NOT NULL,
	[id_match] [int] NULL,
	[id_player] [int] NULL,
	[minute] [int] NULL,
 CONSTRAINT [PK_soccer_goal] PRIMARY KEY CLUSTERED 
(
	[id_goal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[soccer_goal]  WITH CHECK ADD  CONSTRAINT [FK_soccer_goal_soccer_match] FOREIGN KEY([id_match])
REFERENCES [dbo].[soccer_match] ([id_match])
GO

ALTER TABLE [dbo].[soccer_goal] CHECK CONSTRAINT [FK_soccer_goal_soccer_match]
GO

ALTER TABLE [dbo].[soccer_goal]  WITH CHECK ADD  CONSTRAINT [FK_soccer_goal_soccer_team_player] FOREIGN KEY([id_player])
REFERENCES [dbo].[soccer_team_player] ([id_player])
GO

ALTER TABLE [dbo].[soccer_goal] CHECK CONSTRAINT [FK_soccer_goal_soccer_team_player]
GO


