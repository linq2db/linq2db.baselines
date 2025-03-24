﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[p].[ParentID],
					[p].[Value1] as [Value_1]
				FROM
					[Parent] [p]
				LIMIT 100
			) [param]
		WHERE
			[param].[ParentID] = [c_1].[ParentID] AND [param].[Value_1] = [c_1].[ParentID]
	)

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

