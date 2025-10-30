BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			[t1].[PersonID]
		FROM
			[Person] [t1]
		UNION ALL
		SELECT
			[t2].[ParentID] as [PersonID]
		FROM
			[Parent] [t2]
	) [t3]

