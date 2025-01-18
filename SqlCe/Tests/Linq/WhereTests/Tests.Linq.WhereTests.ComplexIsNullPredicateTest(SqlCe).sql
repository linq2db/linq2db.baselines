BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Value] as [Value_1]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[ComplexPredicate] [t1]

