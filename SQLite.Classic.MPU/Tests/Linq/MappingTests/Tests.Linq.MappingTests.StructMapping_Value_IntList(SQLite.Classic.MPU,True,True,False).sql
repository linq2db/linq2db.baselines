﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 5
DECLARE @cond_1  -- Int32
SET     @cond_1 = 3
DECLARE @cond_2  -- Int32
SET     @cond_2 = 4

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	CAST([i].[Value1] AS INTEGER) = @cond OR
	CAST([i].[Value1] AS INTEGER) = @cond_1 OR
	CAST([i].[Value1] AS INTEGER) = @cond_2 OR
	[i].[Value1] IS NULL

