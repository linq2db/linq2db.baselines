BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

