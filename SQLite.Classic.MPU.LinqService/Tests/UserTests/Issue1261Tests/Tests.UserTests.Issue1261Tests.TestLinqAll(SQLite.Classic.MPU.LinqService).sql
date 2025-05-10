BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL AND [x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL)
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[GrandChildID] IS NOT NULL AND [x].[ChildID] = 11 AND [x].[ChildID] IS NOT NULL)
	)

