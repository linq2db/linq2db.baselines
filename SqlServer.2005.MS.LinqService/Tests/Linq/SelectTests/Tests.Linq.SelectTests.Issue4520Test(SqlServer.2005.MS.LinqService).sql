BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN ([i].[BoolValue] = 0 OR [i].[BoolValue] IS NULL) AND CASE
			WHEN [i].[IntValue] <> (
				SELECT TOP (1)
					[p].[IntValue]
				FROM
					[LinqDataTypes] [p]
				WHERE
					[p].[ID] = 2
			)
				THEN 0
			ELSE 1
		END = 1
			THEN 1
		ELSE 0
	END
FROM
	[LinqDataTypes] [i]
WHERE
	[i].[ID] = 1

