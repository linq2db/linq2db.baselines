BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

