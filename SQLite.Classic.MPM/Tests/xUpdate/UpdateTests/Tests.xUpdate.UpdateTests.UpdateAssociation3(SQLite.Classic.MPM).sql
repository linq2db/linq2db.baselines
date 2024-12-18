﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[Value1] = 5
FROM
	[Child] [child_1]
WHERE
	[child_1].[ChildID] = 10000 AND
	[Parent].[ParentID] > 0 AND
	[Parent].[ParentID] IS NOT NULL AND
	[child_1].[ParentID] = [Parent].[ParentID]

