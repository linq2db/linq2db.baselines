-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 1 AND [p].[Value1] IS NOT NULL

