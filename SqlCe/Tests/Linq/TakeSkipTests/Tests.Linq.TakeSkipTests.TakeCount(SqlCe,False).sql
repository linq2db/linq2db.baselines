-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT TOP (5)
			*
		FROM
			[Child] [t1]
	) [t2]

