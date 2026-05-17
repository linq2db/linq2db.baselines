-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
					INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]

