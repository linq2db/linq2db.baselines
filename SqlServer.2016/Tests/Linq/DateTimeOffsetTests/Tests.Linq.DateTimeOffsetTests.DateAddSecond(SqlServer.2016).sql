BeforeExecute
-- SqlServer.2016

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

