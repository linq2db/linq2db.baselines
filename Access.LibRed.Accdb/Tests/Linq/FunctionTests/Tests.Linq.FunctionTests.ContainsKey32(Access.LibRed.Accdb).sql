-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (1, 2)

