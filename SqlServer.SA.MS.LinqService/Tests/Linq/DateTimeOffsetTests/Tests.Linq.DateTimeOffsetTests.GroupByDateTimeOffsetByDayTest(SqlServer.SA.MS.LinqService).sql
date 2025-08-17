BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DatePart(day, [x].[TransactionDate]) as [Key_1]
		FROM
			[Transactions] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

