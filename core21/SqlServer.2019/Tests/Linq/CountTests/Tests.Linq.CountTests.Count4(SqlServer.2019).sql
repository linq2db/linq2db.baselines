BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

