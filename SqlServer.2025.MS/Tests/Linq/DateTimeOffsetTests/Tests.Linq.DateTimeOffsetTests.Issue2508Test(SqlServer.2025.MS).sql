-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[TransactionId]
FROM
	[Transactions] [t]
WHERE
	[t].[TransactionDate] > DATETIMEOFFSETFROMPARTS(2020, 2, 29, 21, 14, 55, 1231234, 0, 40, 7)

