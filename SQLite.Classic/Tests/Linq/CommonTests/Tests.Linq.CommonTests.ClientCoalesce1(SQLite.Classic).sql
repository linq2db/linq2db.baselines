-- SQLite.Classic SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	Coalesce([x].[Value1], @Value1) > 10

-- SQLite.Classic SQLite

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

