BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

