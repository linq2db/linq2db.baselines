-- SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

