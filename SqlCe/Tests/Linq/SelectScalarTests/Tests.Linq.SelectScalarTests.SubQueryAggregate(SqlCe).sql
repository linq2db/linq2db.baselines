-- SqlCe

SELECT
	[t2].[Parents],
	[t4].[Children]
FROM
	(
		SELECT
			1 as [c1]
	) [t5]
		LEFT JOIN (
			SELECT
				COUNT(*) as [Parents]
			FROM
				[Parent] [t1]
		) [t2] ON 1=1
		LEFT JOIN (
			SELECT
				COUNT(*) as [Children]
			FROM
				[Child] [t3]
		) [t4] ON 1=1

