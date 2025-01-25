BeforeExecute
-- SqlCe

SELECT
	[t2].[COUNT_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

