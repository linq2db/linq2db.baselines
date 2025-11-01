-- SqlServer.2022

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

