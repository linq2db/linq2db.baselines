-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[c_1].[ParentID],
	CASE
		WHEN [c_1].[Value1] IS NULL THEN 0
		ELSE [c_1].[Value1]
	END as [ID2],
	[c_1].[ParentID] as [ID1_1]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID] + 1 as [ID2],
	[c_2].[ChildID] as [ID1_1]
FROM
	[Child] [c_2]

