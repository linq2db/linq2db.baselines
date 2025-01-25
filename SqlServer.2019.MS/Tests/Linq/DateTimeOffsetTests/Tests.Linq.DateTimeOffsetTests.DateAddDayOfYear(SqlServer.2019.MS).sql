BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

