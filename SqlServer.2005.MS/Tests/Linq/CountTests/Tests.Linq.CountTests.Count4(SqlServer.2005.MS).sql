-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

