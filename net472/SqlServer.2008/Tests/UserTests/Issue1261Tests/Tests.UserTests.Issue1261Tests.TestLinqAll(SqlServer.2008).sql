BeforeExecute
-- SqlServer.2008

SELECT
	CASE WHEN (NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND (([x].[ChildID] <> 11 OR [x].[ChildID] IS NULL) OR ([x].[GrandChildID] <> 777 OR [x].[GrandChildID] IS NULL))
	)) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2008

SELECT
	CASE WHEN (NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND (([x].[GrandChildID] <> 777 OR [x].[GrandChildID] IS NULL) OR ([x].[ChildID] <> 11 OR [x].[ChildID] IS NULL))
	)) THEN 1 ELSE 0 END

