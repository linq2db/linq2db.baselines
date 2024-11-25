BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT TOP (5)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

