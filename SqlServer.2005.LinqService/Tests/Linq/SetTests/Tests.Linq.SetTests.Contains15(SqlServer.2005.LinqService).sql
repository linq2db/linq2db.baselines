BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]
		INNER JOIN [Parent] [a_Parent1] ON [p].[ParentID] = [a_Parent1].[ParentID]
WHERE
	[a_Parent1].[ParentID] IN (1, 2)

