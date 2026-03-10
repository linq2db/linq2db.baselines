-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			CAST(1 AS Int) as [c1]
		FROM
			[Person] [t1]
		UNION ALL
		SELECT
			CAST(1 AS Int) as [c1]
		FROM
			[Parent] [t2]
	) [t3]

