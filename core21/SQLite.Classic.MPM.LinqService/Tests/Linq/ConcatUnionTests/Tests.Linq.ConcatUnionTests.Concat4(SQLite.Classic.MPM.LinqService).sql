﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_3].[ParentID],
	[c_3].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = 1
		UNION ALL
		SELECT
			[c_2].[ParentID],
			[c_2].[ChildID] + 1000 as [ChildID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = 3
	) [c_3]
WHERE
	[c_3].[ChildID] <> 1032

