BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

