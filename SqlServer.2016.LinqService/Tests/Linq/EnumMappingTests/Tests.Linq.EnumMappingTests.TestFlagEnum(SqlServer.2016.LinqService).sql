BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[IntValue] & 1) <> 0

