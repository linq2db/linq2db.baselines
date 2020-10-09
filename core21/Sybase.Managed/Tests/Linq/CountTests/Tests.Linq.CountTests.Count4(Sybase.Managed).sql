BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

