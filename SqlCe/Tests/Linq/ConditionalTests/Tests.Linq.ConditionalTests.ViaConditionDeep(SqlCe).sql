BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN 1
		ELSE 0
	END as [cond],
	CASE
		WHEN [x].[StringProp] = '2' THEN 1
		ELSE 0
	END as [cond_1],
	[x].[StringProp],
	1 as [IntProp],
	[x].[StringProp] + '2' as [StringProp_1],
	2 as [IntProp_1]
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

