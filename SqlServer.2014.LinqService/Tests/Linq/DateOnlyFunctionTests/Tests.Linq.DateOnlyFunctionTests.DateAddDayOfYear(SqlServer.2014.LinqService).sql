BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

