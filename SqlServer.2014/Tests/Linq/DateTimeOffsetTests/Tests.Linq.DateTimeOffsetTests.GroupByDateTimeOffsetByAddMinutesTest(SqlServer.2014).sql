-- SqlServer.2014

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DateAdd(minute, -1, [x].[TransactionDate]) as [Key_1]
		FROM
			[Transactions] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

