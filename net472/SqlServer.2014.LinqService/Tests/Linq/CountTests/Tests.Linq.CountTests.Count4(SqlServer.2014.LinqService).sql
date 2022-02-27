BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

