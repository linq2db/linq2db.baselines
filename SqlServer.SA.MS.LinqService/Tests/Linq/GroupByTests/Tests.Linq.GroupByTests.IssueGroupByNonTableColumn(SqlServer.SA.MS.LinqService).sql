BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t3].[Key_1],
			COUNT(*) as [Count_1]
		FROM
			(
				SELECT
					CAST(1 AS Int) as [Key_1]
				FROM
					[Person] [t1]
				UNION ALL
				SELECT
					CAST(2 AS Int) as [Key_1]
				FROM
					[Person] [t2]
			) [t3]
		GROUP BY
			[t3].[Key_1]
	) [t4]
WHERE
	[t4].[Key_1] = 1 AND [t4].[Count_1] > 1

