BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON 1=1
WHERE
	[_].[ParentID] > 0

