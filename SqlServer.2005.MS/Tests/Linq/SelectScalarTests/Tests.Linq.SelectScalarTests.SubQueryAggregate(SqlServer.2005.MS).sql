-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t2]
	)

