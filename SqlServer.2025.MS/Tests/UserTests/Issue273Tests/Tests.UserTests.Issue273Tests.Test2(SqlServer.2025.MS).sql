-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[ID],
	[x].[BigIntValue]
FROM
	[LinqDataTypes] [x]
WHERE
	[x].[BigIntValue] = 0 AND [x].[ID] = 10 OR [x].[BigIntValue] = 1 AND [x].[ID] = 10

