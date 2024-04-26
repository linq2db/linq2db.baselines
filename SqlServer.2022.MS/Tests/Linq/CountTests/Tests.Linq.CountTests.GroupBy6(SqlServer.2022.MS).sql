BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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

