BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

