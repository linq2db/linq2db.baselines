-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] & 1) <> 0

