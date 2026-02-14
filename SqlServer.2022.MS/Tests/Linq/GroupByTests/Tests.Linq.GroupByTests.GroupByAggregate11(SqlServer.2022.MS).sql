-- SqlServer.2022.MS SqlServer.2022

SELECT DISTINCT
	IIF((
		SELECT
			AVG([a_Children].[ParentID]) as [Average]
		FROM
			[Child] [a_Children]
		WHERE
			[g_1].[ParentID] = [a_Children].[ParentID]
	) > 3, 1, 0)
FROM
	[Parent] [g_1]
WHERE
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children_1]
		WHERE
			[g_1].[ParentID] = [a_Children_1].[ParentID]
	) > 0

