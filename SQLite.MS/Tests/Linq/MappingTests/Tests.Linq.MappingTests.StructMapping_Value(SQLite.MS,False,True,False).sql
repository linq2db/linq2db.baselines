BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 5
DECLARE @Value1_1  -- Int32
SET     @Value1_1 = 3
DECLARE @Value1_2  -- Int32
SET     @Value1_2 = 4

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	[i].[Value1] = @Value1 OR
	[i].[Value1] = @Value1_1 OR
	[i].[Value1] = @Value1_2 OR
	[i].[Value1] IS NULL

