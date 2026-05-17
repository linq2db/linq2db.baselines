-- SqlCe

SELECT
	[t1].[f1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				[p].[Value1] as [f1]
			FROM
				[Parent] [p]
		) [t1] ON 1=1

