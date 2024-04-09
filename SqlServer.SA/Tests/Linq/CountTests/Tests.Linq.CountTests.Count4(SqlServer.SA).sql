BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

