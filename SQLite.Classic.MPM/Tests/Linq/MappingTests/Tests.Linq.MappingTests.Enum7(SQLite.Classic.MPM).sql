﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @v1  -- Int32
SET     @v1 = 1
DECLARE @v1_1  -- Int32
SET     @v1_1 = 1

UPDATE
	[Parent]
SET
	[Value1] = @v1
WHERE
	([Parent].[Value1] = @v1_1)

