USE [mis_test]
GO

/****** Object:  Table [dbo].[soccer_match_referee]    Script Date: 17/01/2022 09:54:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[soccer_match_referee](
	[id_referee] [int] NOT NULL,
	[referee_name] [varchar](500) NULL,
 CONSTRAINT [PK_soccer_referee] PRIMARY KEY CLUSTERED 
(
	[id_referee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


