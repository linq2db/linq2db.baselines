BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

