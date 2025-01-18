BeforeExecute
-- SqlServer.2008

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

