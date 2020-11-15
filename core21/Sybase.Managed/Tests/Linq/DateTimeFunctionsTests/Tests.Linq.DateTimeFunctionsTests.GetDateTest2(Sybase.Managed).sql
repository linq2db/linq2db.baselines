BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 5
	Convert(Date, GetDate()),
	Count(*)
FROM
	[Parent] [v]
		INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
WHERE
	[v].[Value1] > 0

