BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Car]', N'U') IS NOT NULL)
	DROP TABLE [Car]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Car]', N'U') IS NULL)
	CREATE TABLE [Car]
	(
		[Id]   Int          NOT NULL,
		[Name] NVarChar(50)     NULL,

		CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Car]
(
	[Id],
	[Name]
)
SELECT 1,N'Special' UNION ALL
SELECT 2,N'NoSpecial'

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> N'Special' OR [x].[Name] IS NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special' AND [x].[Name] IS NOT NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] <> N'Special' OR [x].[Name] IS NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = N'Special' AND [x].[Name] IS NOT NULL

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Car] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Car]', N'U') IS NOT NULL)
	DROP TABLE [Car]

