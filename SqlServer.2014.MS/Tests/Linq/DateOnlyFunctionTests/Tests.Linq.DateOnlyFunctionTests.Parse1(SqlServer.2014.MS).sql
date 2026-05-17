-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)) > 0

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

