﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NULL)
	CREATE TABLE [ConditionalData]
	(
		[Id]         Int            NOT NULL,
		[StringProp] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConditionalData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	[x_1].[Id],
	[x_1].[child],
	[x_1].[child_1],
	[x_1].[StringProp_1]
FROM
	(
		SELECT
			CASE
				WHEN ([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL)
					THEN N'2'
				WHEN [x].[StringProp] = N'2' THEN [x].[StringProp]
				ELSE [x].[StringProp] + N'2'
			END as [StringProp],
			CASE
				WHEN ([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL)
					THEN NULL
				WHEN [x].[StringProp] = N'2' THEN 1
				ELSE 2
			END as [IntProp],
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConditionalData]', N'U') IS NOT NULL)
	DROP TABLE [ConditionalData]

