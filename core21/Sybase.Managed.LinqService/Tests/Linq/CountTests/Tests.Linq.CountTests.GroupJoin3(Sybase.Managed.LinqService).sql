BeforeExecute
-- Sybase.Managed Sybase

SELECT 
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

