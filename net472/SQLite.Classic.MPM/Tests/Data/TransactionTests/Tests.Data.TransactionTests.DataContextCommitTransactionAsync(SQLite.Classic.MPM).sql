﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1010
DECLARE @Value1  -- Int32
SET     @Value1 = 1010

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 1010

