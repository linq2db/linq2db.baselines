BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[c1] as [Key_1],
			Count(*) as [Count_1]
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
			) [t1]
		GROUP BY
			[t1].[c1]
	) [_2]
WHERE
	[_2].[Count_1] > 1 AND [_2].[Key_1] = 1

