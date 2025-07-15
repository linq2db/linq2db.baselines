BeforeExecute
-- SqlServer.2017

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

