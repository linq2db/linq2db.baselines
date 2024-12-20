BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NULL)
	CREATE TABLE [ConditionalData]
	(
		[Id]         Int            NOT NULL,
		[StringProp] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
VALUES
(1,N'String1'),
(2,N'String2'),
(3,NULL),
(4,N'String4'),
(5,N'String5'),
(6,NULL),
(7,N'String7'),
(8,N'String8'),
(9,NULL),
(10,N'String10'),
(11,N'-1')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[Id],
	IIF([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL, 1, 0),
	IIF([x].[StringProp] = N'2', 1, 0),
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

