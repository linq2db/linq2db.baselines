-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @tenderIds  -- Int32
SET     @tenderIds = 5
DECLARE @tenderIds_1  -- Int32
SET     @tenderIds_1 = 3
DECLARE @tenderIds_2  -- Int32
SET     @tenderIds_2 = 4
DECLARE @tenderIds_3  -- Int32
SET     @tenderIds_3 = 6

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	[i].[Value1] = @tenderIds OR
	[i].[Value1] = @tenderIds_1 OR
	[i].[Value1] = @tenderIds_2 OR
	[i].[Value1] = @tenderIds_3 OR
	[i].[Value1] IS NULL AND @tenderIds_3 IS NULL

