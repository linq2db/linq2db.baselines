-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	([p].[ParentID] = 1 OR [p].[ParentID] = 2 OR [p].[ParentID] = 4) AND
	[p].[Value1] IS NULL

