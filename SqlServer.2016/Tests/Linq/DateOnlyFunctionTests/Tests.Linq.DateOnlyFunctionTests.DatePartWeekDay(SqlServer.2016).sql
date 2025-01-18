BeforeExecute
-- SqlServer.2016

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

