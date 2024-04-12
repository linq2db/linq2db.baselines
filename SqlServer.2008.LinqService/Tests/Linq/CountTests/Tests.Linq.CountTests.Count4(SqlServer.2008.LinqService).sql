BeforeExecute
-- SqlServer.2008

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

