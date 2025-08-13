BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

