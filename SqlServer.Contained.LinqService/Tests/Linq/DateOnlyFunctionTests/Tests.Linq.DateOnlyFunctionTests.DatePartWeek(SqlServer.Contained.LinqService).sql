BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

