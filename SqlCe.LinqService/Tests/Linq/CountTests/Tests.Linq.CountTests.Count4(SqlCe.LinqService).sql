BeforeExecute
-- SqlCe

SELECT
	[t2].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

