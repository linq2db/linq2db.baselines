BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

