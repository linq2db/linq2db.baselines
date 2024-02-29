﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[ParentID] = [c_2].[ParentID] + 1000
FROM
	[Child] [c_1],
	[Child] [c_2]
WHERE
	[Parent].[ParentID] = 1 AND [Parent].[ParentID] = [c_1].[ParentID] AND
	[c_2].[ChildID] = 11

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[ParentID] = 1
WHERE
	[Parent].[ParentID] = 1001

