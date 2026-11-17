-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] + 1,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	CASE
		WHEN [c_2].[Value1] IS NULL THEN 0
		ELSE [c_2].[Value1]
	END,
	[c_2].[ParentID]
FROM
	[Parent] [c_2]

