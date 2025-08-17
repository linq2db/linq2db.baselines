BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DatePart(weekday, [x].[TransactionDate]) - 1 as [Key_1]
		FROM
			[Transactions] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

