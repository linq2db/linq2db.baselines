-- SqlServer.2016.MS SqlServer.2016
SELECT
	CAST(CAST([d].[TransactionDate] AS NVarChar(10)) AS Date)
FROM
	[Transactions] [d]
WHERE
	DatePart(day, CAST(CAST([d].[TransactionDate] AS NVarChar(10)) AS Date)) > 0

