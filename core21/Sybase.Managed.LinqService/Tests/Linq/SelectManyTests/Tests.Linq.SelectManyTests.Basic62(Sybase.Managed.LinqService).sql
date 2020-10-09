BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[_].[ParentID] + [cp].[ParentID]
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON 1=1
WHERE
	[_].[ParentID] + [cp].[ParentID] > 1 AND [cp].[ParentID] = [_].[ParentID]

