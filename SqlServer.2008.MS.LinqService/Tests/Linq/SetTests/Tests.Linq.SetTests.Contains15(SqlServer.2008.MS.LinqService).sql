BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p]
		INNER JOIN [Parent] [a_Parent1] ON [p].[ParentID] = [a_Parent1].[ParentID]
WHERE
	[a_Parent1].[ParentID] IN (1, 2)

