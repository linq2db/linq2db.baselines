-- SQLite.MS SQLite
DECLARE @cond  -- Int32
SET     @cond = 5
DECLARE @cond_1  -- Int32
SET     @cond_1 = 3
DECLARE @cond_2  -- Int32
SET     @cond_2 = 4
DECLARE @cond_3  -- Int32
SET     @cond_3 = 6

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	[i].[Value1] = @cond OR
	[i].[Value1] = @cond_1 OR
	[i].[Value1] = @cond_2 OR
	[i].[Value1] = @cond_3 OR
	[i].[Value1] IS NULL AND @cond_3 IS NULL

