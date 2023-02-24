BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	Coalesce([p].[Value1], @Value1)
FROM
	[Parent] [p]

