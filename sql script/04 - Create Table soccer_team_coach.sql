USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_team_coach]    Script Date: 17/01/2022 09:54:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_team_coach](
	[id_coach] [int] NOT NULL,
	[coach_name] [varchar](500) NULL,
 CONSTRAINT [PK_soccer_team_coach] PRIMARY KEY CLUSTERED 
(
	[id_coach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


