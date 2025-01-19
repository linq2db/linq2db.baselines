BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

