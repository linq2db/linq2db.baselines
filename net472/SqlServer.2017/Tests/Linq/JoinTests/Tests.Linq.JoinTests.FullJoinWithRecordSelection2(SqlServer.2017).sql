﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [Tag]
(
	[Id]     Int            NOT NULL,
	[FactId] Int            NOT NULL,
	[Name]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

SELECT 
	[fact_1].[Id], 
	[leftTag].[Id], 
	[leftTag].[FactId], 
	[leftTag].[Name]
FROM
	[Tag] [leftTag]
		FULL JOIN [Fact] [fact_1] ON [leftTag].[FactId] = [fact_1].[Id]
WHERE
	([fact_1].[Id] > 3 OR [leftTag].[FactId] > 3)

BeforeExecute
-- SqlServer.2017

DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2017

DROP TABLE [Fact]

