BeforeExecute
-- SqlServer.2014

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

