BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN ([i].[BoolValue] IS NULL OR [i].[BoolValue] = 0) AND ([i].[IntValue] = (
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

