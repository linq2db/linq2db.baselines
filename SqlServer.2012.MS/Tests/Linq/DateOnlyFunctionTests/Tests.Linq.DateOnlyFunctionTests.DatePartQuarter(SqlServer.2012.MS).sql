-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

