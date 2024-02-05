BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

