BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [t2]

