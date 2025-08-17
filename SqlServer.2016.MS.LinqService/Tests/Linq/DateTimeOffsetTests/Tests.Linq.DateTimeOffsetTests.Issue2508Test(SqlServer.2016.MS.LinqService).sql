BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t].[TransactionId]
FROM
	[Transactions] [t]
WHERE
	[t].[TransactionDate] > DateAdd(minute, 200, DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7))

