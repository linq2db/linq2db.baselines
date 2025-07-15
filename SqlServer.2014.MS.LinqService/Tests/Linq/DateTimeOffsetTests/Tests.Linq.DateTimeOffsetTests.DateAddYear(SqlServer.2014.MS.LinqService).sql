BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

