-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

