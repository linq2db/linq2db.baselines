-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)) > 0

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

