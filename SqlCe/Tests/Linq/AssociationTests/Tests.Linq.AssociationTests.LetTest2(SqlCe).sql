-- SqlCe

SELECT
	[t].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

-- SqlCe

SELECT
	[t].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

