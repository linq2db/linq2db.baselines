BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[TransactionId]
FROM
	[Transactions] [t]
WHERE
	[t].[TransactionDate] > DateAdd(minute, 200, CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET))

