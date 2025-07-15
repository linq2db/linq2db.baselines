BeforeExecute
-- SqlServer.2012

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

