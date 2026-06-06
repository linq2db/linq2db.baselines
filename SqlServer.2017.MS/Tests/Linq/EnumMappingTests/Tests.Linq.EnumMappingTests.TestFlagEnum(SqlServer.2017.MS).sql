-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] & 1) <> 0

