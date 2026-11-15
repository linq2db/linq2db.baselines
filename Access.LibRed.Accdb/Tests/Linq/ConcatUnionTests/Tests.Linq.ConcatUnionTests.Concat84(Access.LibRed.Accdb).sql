-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID] + 1
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID],
	CASE
		WHEN [c_2].[Value1] IS NULL THEN 0
		ELSE [c_2].[Value1]
	END
FROM
	[Parent] [c_2]

