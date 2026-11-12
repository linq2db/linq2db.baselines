-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [param]
		WHERE
			[param].[ParentID] = [c_1].[ParentID] AND IIF([param].[Value1] IS NULL, -1, [param].[Value1]) = [c_1].[ParentID]
	)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

