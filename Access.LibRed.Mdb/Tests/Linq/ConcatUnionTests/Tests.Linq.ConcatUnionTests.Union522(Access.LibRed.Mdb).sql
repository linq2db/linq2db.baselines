-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p1].[Value1],
	IIF(False, 0, NULL)
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[Value1],
	[p2].[ParentID]
FROM
	[Parent] [p2]

