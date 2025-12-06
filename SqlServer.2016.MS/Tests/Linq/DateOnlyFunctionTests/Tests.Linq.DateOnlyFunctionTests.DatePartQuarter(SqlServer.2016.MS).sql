-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

