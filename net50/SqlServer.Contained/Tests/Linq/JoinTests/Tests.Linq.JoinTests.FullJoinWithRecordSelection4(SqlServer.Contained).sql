﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Fact]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(1,3,N'Tag3'),
(2,3,N'Tag3'),
(3,4,N'Tag4'),
(4,6,N'Tag6')

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[f].[Id],
	[ft].[Id],
	[ft].[FactId],
	[ft].[Name]
FROM
	[Tag] [ft]
		FULL JOIN [Fact] [f] ON [ft].[FactId] = [f].[Id]
WHERE
	([f].[Id] > 3 OR [ft].[FactId] > 3)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Fact]

