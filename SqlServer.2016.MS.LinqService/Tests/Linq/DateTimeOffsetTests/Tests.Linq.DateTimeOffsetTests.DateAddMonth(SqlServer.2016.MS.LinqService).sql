BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateAdd(month, 2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

