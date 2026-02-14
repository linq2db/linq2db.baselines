-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			MIN([a_Children].[ParentID]) as [max_1]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] < 0
	)
FROM
	[Parent] [p]

