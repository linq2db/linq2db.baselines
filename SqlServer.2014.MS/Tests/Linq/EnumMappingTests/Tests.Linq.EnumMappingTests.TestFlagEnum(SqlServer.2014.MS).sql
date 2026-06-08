-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] & 1) <> 0

