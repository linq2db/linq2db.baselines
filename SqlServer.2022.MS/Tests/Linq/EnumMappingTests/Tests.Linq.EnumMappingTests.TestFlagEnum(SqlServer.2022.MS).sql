-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[IntValue] & 1) <> 0

