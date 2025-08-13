BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

