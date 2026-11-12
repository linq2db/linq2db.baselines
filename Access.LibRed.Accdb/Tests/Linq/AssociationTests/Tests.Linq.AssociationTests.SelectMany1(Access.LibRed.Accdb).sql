-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON ([p].[ParentID] = [a_Children].[ParentID])

