BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

