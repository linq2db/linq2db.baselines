﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	Max([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	Max([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

