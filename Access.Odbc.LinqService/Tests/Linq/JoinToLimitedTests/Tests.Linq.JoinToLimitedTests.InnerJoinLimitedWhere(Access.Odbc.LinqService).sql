BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[o].[ParentID],
	[o].[Value1],
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT TOP 1
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [x] ON ([x].[ParentID] = [o].[ParentID])

