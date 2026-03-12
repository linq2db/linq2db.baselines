-- SqlServer.2022

SELECT
	DatePart(year, [t].[TransactionDate])
FROM
	[Transactions] [t]

