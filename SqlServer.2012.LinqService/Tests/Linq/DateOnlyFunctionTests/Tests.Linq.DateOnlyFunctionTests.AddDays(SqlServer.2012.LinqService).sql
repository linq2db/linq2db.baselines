BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

