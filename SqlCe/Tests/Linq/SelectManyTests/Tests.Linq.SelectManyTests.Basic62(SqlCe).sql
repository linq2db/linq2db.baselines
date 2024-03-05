BeforeExecute
-- SqlCe

SELECT
	[a_Children].[ParentID] + [p].[ParentID] as [c1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON [a_Children].[ParentID] + [p].[ParentID] > 1 AND [p].[ParentID] = [a_Children].[ParentID]

