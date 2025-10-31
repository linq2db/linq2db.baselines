-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

