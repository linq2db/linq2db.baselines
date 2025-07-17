BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) AND
	[p].[ParentID] > 100

