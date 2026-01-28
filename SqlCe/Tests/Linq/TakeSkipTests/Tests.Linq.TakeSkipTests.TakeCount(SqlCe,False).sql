-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT TOP (5)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

