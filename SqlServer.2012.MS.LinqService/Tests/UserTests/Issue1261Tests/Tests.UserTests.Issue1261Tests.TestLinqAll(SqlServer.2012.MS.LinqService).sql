BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[GrandChildID] = 777)
	), 1, 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[ChildID] = 11)
	), 1, 0)

