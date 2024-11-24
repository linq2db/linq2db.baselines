BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID],
	[p2].[Value1]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[Value1] = [p2].[Value1]

