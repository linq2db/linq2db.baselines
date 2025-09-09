BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

