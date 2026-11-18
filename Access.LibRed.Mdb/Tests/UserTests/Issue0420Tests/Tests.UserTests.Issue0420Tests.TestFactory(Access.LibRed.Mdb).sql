-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON ([p].[ParentID] = [a_Children].[ParentID])

