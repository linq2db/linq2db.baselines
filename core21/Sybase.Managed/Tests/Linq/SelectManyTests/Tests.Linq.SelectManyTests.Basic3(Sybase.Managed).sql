BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[_1].[c1]
FROM
	[Parent] [cp],
	( 
		SELECT 
			[_].[ParentID] + 1 as [c1]
		FROM
			[Child] [_]
	) [_1]
WHERE
	[_1].[c1] > 1

