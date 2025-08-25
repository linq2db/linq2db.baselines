BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children]
				WHERE
					[g_1].[ParentID] = [a_Children].[ParentID]
			) > 0 AND (
				SELECT
					AVG([a_Children_1].[ParentID])
				FROM
					[Child] [a_Children_1]
				WHERE
					[g_1].[ParentID] = [a_Children_1].[ParentID]
			) > 3, 1, 0) as [Key_1]
		FROM
			[Parent] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

