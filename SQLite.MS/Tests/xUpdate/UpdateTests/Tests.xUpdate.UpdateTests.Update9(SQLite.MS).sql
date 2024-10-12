﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [Child].[ChildID] + 1,
	[ParentID] = [p].[ParentID]
FROM
	[Parent] [a_Parent],
	[Parent] [p]
WHERE
	[Child].[ChildID] = @id AND
	[a_Parent].[Value1] = 1 AND
	[Child].[ParentID] = [a_Parent].[ParentID] AND
	[Child].[ParentID] = [p].[ParentID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id + 1

