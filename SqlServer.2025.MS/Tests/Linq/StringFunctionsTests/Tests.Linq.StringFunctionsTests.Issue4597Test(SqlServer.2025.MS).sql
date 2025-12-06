-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			STRING_AGG(CAST([a_Children].[ChildID] AS NVarChar(11)), N', ')
		FROM
			[Child] [a_Children]
		WHERE
			[s].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [s]

