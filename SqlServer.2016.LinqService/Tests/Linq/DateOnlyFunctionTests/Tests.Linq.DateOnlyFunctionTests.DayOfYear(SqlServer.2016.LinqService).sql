BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

