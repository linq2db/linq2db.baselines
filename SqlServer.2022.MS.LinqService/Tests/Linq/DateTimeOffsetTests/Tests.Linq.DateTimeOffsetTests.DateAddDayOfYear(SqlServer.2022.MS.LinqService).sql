BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

