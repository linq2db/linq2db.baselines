BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [ConditionalData]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NULL)
	CREATE TABLE [ConditionalData]
	(
		[Id]         Int            NOT NULL,
		[StringProp] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
(10,N'String10')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_1].[Id],
	[x_1].[child],
	[x_1].[child_1],
	[x_1].[StringProp_1]
FROM
	(
		SELECT
			IIF(([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL), N'2', IIF([x].[StringProp] = N'2', [x].[StringProp], [x].[StringProp] + N'2')) as [StringProp],
			IIF(([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL), NULL, IIF([x].[StringProp] = N'2', 1, 2)) as [IntProp],
			[x].[Id],
			IIF(([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL), 1, 0) as [child],
			[x].[StringProp] as [child_1],
			[x].[StringProp] + N'2' as [StringProp_1]
		FROM
			[ConditionalData] [x]
	) [x_1]
WHERE
	[x_1].[StringProp] LIKE N'%2' ESCAPE N'~' AND [x_1].[IntProp] = 2

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [ConditionalData]

