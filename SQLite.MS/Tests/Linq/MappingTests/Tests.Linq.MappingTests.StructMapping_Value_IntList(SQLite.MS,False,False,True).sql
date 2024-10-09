BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 5
DECLARE @Value1_1  -- Int32
SET     @Value1_1 = 3
DECLARE @Value1_2  -- Int32
SET     @Value1_2 = 4
DECLARE @Value1_3  -- Int32
SET     @Value1_3 = 6

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	CAST([i].[Value1] AS INTEGER) = @Value1 OR
	CAST([i].[Value1] AS INTEGER) = @Value1_1 OR
	CAST([i].[Value1] AS INTEGER) = @Value1_2 OR
	CAST([i].[Value1] AS INTEGER) = @Value1_3

