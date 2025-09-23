BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[t].[TransactionId]
FROM
	[Transactions] [t]
WHERE
	[t].[TransactionDate] > DATETIMEOFFSETFROMPARTS(2020, 2, 29, 21, 14, 55, 1231234, 0, 40, 7)

