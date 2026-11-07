-- SqlServer.2017
SELECT
	CAST(N'2010-01-' + CAST(format([t].[TransactionId], 'd2') AS NVarChar(Max)) AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST(N'2010-01-' + CAST(format([t].[TransactionId], 'd2') AS NVarChar(Max)) AS Date)) > 0

-- SqlServer.2017
SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

