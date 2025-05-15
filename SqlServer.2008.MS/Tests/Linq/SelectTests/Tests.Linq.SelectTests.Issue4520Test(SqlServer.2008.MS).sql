BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN ([i].[BoolValue] = 0 OR [i].[BoolValue] IS NULL) AND ([i].[IntValue] = (
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

