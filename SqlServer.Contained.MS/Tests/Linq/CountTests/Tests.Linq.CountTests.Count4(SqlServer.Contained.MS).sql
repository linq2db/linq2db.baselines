BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

