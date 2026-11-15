-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
			[param].[ParentID] = [c_1].[ParentID] AND CASE
				WHEN [param].[Value1] IS NULL THEN -1
				ELSE [param].[Value1]
			END = [c_1].[ParentID]
	)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

