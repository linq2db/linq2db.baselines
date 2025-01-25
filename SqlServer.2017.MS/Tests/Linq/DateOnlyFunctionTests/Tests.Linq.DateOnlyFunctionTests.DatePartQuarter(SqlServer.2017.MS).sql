BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

