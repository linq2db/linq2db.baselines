BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

