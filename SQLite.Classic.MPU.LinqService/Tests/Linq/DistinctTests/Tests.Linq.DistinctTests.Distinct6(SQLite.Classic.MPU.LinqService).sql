BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID]),
	@Value1
FROM
	[Parent] [p]

