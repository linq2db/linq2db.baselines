BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[IntValue] & 1) <> 0

