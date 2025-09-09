BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [t2]

