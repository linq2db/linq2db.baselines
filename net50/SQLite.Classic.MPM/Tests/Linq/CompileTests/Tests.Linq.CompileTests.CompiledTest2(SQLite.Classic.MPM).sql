﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID
LIMIT @ParentID

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID
LIMIT @ParentID

