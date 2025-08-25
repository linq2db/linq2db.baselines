BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

