BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

