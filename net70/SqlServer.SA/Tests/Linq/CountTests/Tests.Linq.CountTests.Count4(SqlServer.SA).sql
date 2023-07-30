BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

