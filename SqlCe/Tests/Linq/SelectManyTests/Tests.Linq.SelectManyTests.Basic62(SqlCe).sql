-- SqlCe

SELECT
	[a_Children].[ParentID] + [p].[ParentID] as [c1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] + [p].[ParentID] > 1

