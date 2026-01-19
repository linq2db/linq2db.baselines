-- SqlCe

SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t3]
		LEFT JOIN [Parent] [a_Parent] ON [t3].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Parent].[ParentID] = [a_Children].[ParentID]
		) [t2]
ORDER BY
	[t2].[Count_1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

