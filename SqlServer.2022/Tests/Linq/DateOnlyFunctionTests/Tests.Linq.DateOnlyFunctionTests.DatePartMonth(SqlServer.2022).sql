-- SqlServer.2022

SELECT
	DatePart(month, [t].[TransactionDate])
FROM
	[Transactions] [t]

