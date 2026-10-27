-- Access.Ace.Odbc AccessODBC
SELECT
	[x_1].[ParentID],
	IIF([x_1].[Child] IS NULL, -1, IIF([x_1].[projection__set_id__] = 0, NULL, [x_1].[ChildID]))
FROM
	(
		SELECT
			[x].[ParentID],
			IIF(False, 0, NULL) as [Child],
			IIF(False, 0, NULL) as [ChildID],
			0 as [projection__set_id__]
		FROM
			[Parent] [x]
		UNION ALL
		SELECT
			[t1].[ParentID],
			[c_1].[ParentID] as [Child],
			[c_1].[ChildID],
			1 as [projection__set_id__]
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [c_1] ON ([c_1].[ParentID] = [t1].[ParentID])
	) [x_1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

