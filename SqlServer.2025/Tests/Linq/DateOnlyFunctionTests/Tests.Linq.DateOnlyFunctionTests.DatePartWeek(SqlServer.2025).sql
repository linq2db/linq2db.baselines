-- SqlServer.2025

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

