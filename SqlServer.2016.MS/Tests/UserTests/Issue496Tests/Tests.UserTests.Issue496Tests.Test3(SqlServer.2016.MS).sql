BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Children].[ChildID],
	[a_Children].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON Convert(BigInt, [p].[ParentID]) = [a_Children].[ParentID]
WHERE
	[p].[ParentID] = 1

