-- SqlCe

SELECT
	CASE
		WHEN [p].[Value1] IS NULL THEN [t1].[Count_1]
		ELSE [t2].[Count_1]
	END as [Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[p].[ParentID] = [a_Children_1].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] <> 5

