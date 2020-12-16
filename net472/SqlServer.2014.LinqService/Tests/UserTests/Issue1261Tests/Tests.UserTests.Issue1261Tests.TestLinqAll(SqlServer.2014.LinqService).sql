BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF((NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND (([x].[ChildID] <> 11 OR [x].[ChildID] IS NULL) OR ([x].[GrandChildID] <> 777 OR [x].[GrandChildID] IS NULL))
	)), 1, 0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF((NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND (([x].[GrandChildID] <> 777 OR [x].[GrandChildID] IS NULL) OR ([x].[ChildID] <> 11 OR [x].[ChildID] IS NULL))
	)), 1, 0)

