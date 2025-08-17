BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

