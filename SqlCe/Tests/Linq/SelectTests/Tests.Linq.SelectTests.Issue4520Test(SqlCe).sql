-- SqlCe

SELECT
	CASE
		WHEN ([i].[BoolValue] IS NULL OR [i].[BoolValue] = 0) AND ([i].[IntValue] = [t1].[IntValue] OR [i].[IntValue] IS NULL AND [t1].[IntValue] IS NULL)
			THEN 1
		ELSE 0
	END as [c1]
FROM
	[LinqDataTypes] [i]
		LEFT JOIN (
			SELECT TOP (1)
				[p].[IntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) [t1] ON 1=1
WHERE
	[i].[ID] = 1

