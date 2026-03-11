-- SqlServer.2016.MS SqlServer.2016

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT DISTINCT
			IIF((
				SELECT
					AVG([a_Children].[ParentID])
				FROM
					[Child] [a_Children]
				WHERE
					[g_1].[ParentID] = [a_Children].[ParentID]
			) > 3, 1, 0) as [Key_1]
		FROM
			[Parent] [g_1]
	) [g_2]
ORDER BY
	[g_2].[Key_1]

