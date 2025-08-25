BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

