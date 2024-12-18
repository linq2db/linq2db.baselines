BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN ([i].[BoolValue] = 0 AND [i].[BoolValue] IS NOT NULL AND [i].[BoolValue] IS NOT NULL OR [i].[BoolValue] IS NULL OR CASE
			WHEN [i].[BoolValue] IS NOT NULL THEN [i].[BoolValue]
			ELSE 0
		END IS NULL) AND ([i].[IntValue] = [t1].[cond] AND [i].[IntValue] IS NOT NULL AND [t1].[cond] IS NOT NULL OR [i].[IntValue] IS NULL AND [t1].[cond] IS NULL)
			THEN 1
		ELSE 0
	END as [cond]
FROM
	[LinqDataTypes] [i]
		LEFT JOIN (
			SELECT TOP (1)
				[p].[IntValue] as [cond]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) [t1] ON 1=1
WHERE
	[i].[ID] = 1

