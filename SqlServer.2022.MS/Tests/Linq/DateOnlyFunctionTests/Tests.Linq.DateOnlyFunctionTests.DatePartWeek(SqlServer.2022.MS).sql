-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

