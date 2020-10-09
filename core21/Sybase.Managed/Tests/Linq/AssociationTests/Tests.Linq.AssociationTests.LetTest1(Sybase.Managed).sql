BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[p].[ParentID], 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [p]

