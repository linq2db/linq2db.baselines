﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Car]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Car]', N'U') IS NULL)
	CREATE TABLE [Car]
	(
		[Id]   Int          NOT NULL,
		[Name] NVarChar(50)     NULL,

		CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(1,N'Special'),
(2,N'NoSpecial')

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> N'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> N'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Car]

