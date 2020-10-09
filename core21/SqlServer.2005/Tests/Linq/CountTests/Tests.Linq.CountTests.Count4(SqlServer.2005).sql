BeforeExecute
-- SqlServer.2005

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

