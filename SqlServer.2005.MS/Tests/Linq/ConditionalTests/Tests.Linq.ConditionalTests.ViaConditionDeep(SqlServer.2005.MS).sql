BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NULL)
	CREATE TABLE [ConditionalData]
	(
		[Id]         Int            NOT NULL,
		[StringProp] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
SELECT 1,N'String1' UNION ALL
SELECT 2,N'String2' UNION ALL
SELECT 3,NULL UNION ALL
SELECT 4,N'String4' UNION ALL
SELECT 5,N'String5' UNION ALL
SELECT 6,NULL UNION ALL
SELECT 7,N'String7' UNION ALL
SELECT 8,N'String8' UNION ALL
SELECT 9,NULL UNION ALL
SELECT 10,N'String10' UNION ALL
SELECT 11,N'-1'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = N'1' OR [x].[StringProp] IS NULL
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [x].[StringProp] = N'2' THEN 1
		ELSE 0
	END,
	[x].[StringProp],
	1,
	[x].[StringProp] + N'2',
	2
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = N'1' OR [x].[StringProp] IS NULL
			THEN N'2'
		WHEN [x].[StringProp] = N'2' THEN [x].[StringProp]
		ELSE [x].[StringProp] + N'2'
	END LIKE N'%2' ESCAPE N'~' AND
	CASE
		WHEN [x].[StringProp] = N'1' OR [x].[StringProp] IS NULL
			THEN NULL
		WHEN [x].[StringProp] = N'2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

