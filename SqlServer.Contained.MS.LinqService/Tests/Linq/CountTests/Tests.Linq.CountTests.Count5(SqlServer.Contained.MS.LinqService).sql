BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

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

