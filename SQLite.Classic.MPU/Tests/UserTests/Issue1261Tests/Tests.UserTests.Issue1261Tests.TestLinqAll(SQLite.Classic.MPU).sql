﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[GrandChildID] = 777)
	)

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[ChildID] = 11)
	)

