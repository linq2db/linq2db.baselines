BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[IntValue] & 1) <> 0

