﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

