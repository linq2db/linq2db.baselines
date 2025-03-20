﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 1002
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SQLite.MS SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 1001

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @parent_ParentID
LIMIT 2

