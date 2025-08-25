BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

