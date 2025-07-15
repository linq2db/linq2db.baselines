BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

