BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

