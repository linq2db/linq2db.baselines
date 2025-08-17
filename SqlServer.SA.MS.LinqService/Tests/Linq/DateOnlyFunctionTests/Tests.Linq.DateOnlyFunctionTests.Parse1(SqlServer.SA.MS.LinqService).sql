BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST(N'2010-01-' + format([t].[TransactionId], 'd2') AS Date)) > 0

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

