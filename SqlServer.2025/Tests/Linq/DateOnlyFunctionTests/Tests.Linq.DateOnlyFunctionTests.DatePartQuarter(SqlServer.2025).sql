-- SqlServer.2025

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

