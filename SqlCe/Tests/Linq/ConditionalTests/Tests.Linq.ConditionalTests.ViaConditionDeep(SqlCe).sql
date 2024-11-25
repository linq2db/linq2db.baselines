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
SELECT 10,'String10' UNION ALL
SELECT 11,'-1'

BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN 1
		ELSE 0
	END as [child],
	[x].[StringProp],
	[x].[StringProp] + '2' as [StringProp_1]
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN '2'
		WHEN [x].[StringProp] = '2' THEN [x].[StringProp]
		ELSE [x].[StringProp] + '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN NULL
		WHEN [x].[StringProp] = '2' THEN 1
		ELSE 2
	END = 2

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

