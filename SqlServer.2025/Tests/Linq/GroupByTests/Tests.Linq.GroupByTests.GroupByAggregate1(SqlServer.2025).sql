-- SqlServer.2025

SELECT DISTINCT
	IIF((
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children]
		WHERE
			[g_1].[ParentID] = [a_Children].[ParentID]
	) > 0 AND (
		SELECT
			AVG([a_Children_1].[ParentID]) as [Average]
		FROM
			[Child] [a_Children_1]
		WHERE
			[g_1].[ParentID] = [a_Children_1].[ParentID]
	) > 3, 1, 0)
FROM
	[Parent] [g_1]

