BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN (CASE
			WHEN [i].[BoolValue] = 1 THEN 1
			WHEN [i].[BoolValue] = 0 THEN 0
			ELSE NULL
		END = 0 OR [i].[BoolValue] IS NULL) AND ([i].[IntValue] = (
			SELECT TOP (1)
				[p].[IntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) OR [i].[IntValue] IS NULL AND (
			SELECT TOP (1)
				[p].[IntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = 2
		) IS NULL)
			THEN 1
		ELSE 0
	END
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

