-- SqlServer.2022

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

