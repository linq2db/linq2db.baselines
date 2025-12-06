-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	Coalesce((
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	), [p].[Value1])
FROM
	[Parent] [p]

