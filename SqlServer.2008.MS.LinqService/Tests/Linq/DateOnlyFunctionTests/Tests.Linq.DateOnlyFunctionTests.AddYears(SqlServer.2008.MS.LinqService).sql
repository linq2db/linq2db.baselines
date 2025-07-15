BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

