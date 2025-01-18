BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

