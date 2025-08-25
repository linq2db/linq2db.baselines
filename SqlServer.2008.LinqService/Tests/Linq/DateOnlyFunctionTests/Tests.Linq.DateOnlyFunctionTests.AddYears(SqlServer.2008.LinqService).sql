BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

