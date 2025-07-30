BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CAST([x].[TransactionDate] AS Time) as [Key_1]
		FROM
			[Transactions] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

