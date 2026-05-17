-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL AND [x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL)
	), 1, 0)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL AND [x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL)
	), 1, 0)

