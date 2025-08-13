BeforeExecute
-- SqlServer.2008

SELECT
	CAST(N'2010-01-' + REPLICATE('0', CASE WHEN LEN(CAST([t].[TransactionId] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[TransactionId] as NVARCHAR))) END) + CAST([t].[TransactionId] as NVARCHAR) AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST(N'2010-01-' + REPLICATE('0', CASE WHEN LEN(CAST([t].[TransactionId] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[TransactionId] as NVARCHAR))) END) + CAST([t].[TransactionId] as NVARCHAR) AS Date)) > 0

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

