BeforeExecute
-- SqlServer.2014

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

