BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

