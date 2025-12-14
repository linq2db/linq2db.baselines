-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

