-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p1].[ParentID],
	[p1].[ParentID] as [ParentID_1],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION ALL
SELECT
	CASE
		WHEN [p2].[Value1] IS NULL THEN 0
		ELSE [p2].[Value1]
	END as [ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [Value1]
FROM
	[Parent] [p2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

