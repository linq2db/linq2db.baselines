BeforeExecute
-- SqlServer.2014

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

