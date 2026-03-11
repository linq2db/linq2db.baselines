-- SqlServer.2019

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

