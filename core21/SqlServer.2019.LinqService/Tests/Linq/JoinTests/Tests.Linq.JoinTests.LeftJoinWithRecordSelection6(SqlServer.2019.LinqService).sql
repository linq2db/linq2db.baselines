﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Tag]
(
	[Id]     Int            NOT NULL,
	[FactId] Int            NOT NULL,
	[Name]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(1,3,N'Tag3'),
(2,3,N'Tag3'),
(3,4,N'Tag4')

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[ft].[Id],
	[t].[Id],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [ft]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [ft].[Id]
WHERE
	[ft].[Id] > 3

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Fact]

