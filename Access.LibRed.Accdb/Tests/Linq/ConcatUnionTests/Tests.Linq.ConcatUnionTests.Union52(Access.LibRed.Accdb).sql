-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p1].[ParentID],
	IIF(False, 0, NULL)
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[ParentID],
	[p2].[Value1]
FROM
	[Parent] [p2]

