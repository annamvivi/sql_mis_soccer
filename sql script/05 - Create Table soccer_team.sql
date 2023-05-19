USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_team]    Script Date: 17/01/2022 09:54:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_team](
	[id_team] [int] NOT NULL,
	[team_name] [varchar](500) NULL,
	[id_coach] [int] NULL,
 CONSTRAINT [PK_soccer_team] PRIMARY KEY CLUSTERED 
(
	[id_team] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[soccer_team]  WITH CHECK ADD  CONSTRAINT [FK_soccer_team_coach] FOREIGN KEY([id_coach])
REFERENCES [dbo].[soccer_team_coach] ([id_coach])
GO

ALTER TABLE [dbo].[soccer_team] CHECK CONSTRAINT [FK_soccer_team_coach]
GO


