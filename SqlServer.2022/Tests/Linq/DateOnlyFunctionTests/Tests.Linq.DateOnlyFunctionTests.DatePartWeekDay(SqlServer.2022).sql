-- SqlServer.2022

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

