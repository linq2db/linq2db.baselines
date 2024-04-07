BeforeExecute
-- SqlCe

SELECT
	[t2].[cnt]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

