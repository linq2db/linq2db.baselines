BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

