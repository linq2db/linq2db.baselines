-- SqlServer.2025

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

