-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > 1
	)
FROM
	[Parent] [p]

