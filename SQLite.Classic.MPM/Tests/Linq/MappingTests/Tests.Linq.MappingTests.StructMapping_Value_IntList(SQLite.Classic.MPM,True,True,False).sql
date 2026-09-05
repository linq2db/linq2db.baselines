-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @tenderIds_0  -- Int32
SET     @tenderIds_0 = 5
DECLARE @tenderIds_1  -- Int32
SET     @tenderIds_1 = 3
DECLARE @tenderIds_2  -- Int32
SET     @tenderIds_2 = 4

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	[i].[Value1] = @tenderIds_0 OR
	[i].[Value1] = @tenderIds_1 OR
	[i].[Value1] = @tenderIds_2 OR
	[i].[Value1] IS NULL

