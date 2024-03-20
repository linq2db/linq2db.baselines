BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Count(*)
FROM
	(
		SELECT
			[_2].[c1] as [Key_1],
			COUNT(*) as [Count_1]
		FROM
			(
				SELECT
					1 as [c1]
				FROM
					[Person] [_]
				UNION ALL
				SELECT
					2 as [c1]
				FROM
					[Person] [_1]
			) [_2]
		GROUP BY
			[_2].[c1]
	) [t1]
WHERE
	[t1].[Key_1] = 1 AND [t1].[Count_1] > 1

