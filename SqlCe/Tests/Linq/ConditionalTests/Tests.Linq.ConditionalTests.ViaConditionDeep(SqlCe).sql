BeforeExecute
-- SqlCe

DROP TABLE [ConditionalData]

BeforeExecute
-- SqlCe

CREATE TABLE [ConditionalData]
(
	[Id]         Int           NOT NULL,
	[StringProp] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConditionalData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [ConditionalData]
(
	[Id],
	[StringProp]
)
SELECT 1,'String1' UNION ALL
SELECT 2,'String2' UNION ALL
SELECT 3,NULL UNION ALL
SELECT 4,'String4' UNION ALL
SELECT 5,'String5' UNION ALL
SELECT 6,NULL UNION ALL
SELECT 7,'String7' UNION ALL
SELECT 8,'String8' UNION ALL
SELECT 9,NULL UNION ALL
SELECT 10,'String10'

BeforeExecute
-- SqlCe

SELECT
	[x_1].[Id],
	[x_1].[child],
	[x_1].[child_1],
	[x_1].[StringProp_1] as [StringProp]
FROM
	(
		SELECT
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN '2'
				WHEN [x].[StringProp] = '2' THEN [x].[StringProp]
				ELSE [x].[StringProp] + '2'
			END as [StringProp],
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN NULL
				WHEN [x].[StringProp] = '2' THEN 1
				ELSE 2
			END as [IntProp],
			[x].[Id],
			CASE
				WHEN ([x].[StringProp] = '1' OR [x].[StringProp] IS NULL)
					THEN 1
				ELSE 0
			END as [child],
			[x].[StringProp] as [child_1],
			[x].[StringProp] + '2' as [StringProp_1]
		FROM
			[ConditionalData] [x]
	) [x_1]
WHERE
	[x_1].[StringProp] LIKE '%2' ESCAPE '~' AND [x_1].[IntProp] = 2

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ConditionalData]

