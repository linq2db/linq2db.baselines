-- SqlServer.SA SqlServer.2019

SELECT DISTINCT
	IIF((
		SELECT
			AVG([a_Children].[ParentID])
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
			COUNT(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[g_1].[ParentID] = [a_Children_1].[ParentID]
	) > 0

