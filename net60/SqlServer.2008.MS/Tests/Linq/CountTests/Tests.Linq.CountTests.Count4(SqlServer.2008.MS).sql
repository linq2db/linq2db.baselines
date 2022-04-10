BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

