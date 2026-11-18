-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p1].[ParentID],
	IIF(False, 0, NULL)
FROM
	[Parent] [p1]
UNION
SELECT
	IIF(False, 0, NULL),
	[p2].[Value1]
FROM
	[Parent] [p2]

