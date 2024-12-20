BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	CAST(CAST([p].[ParentID] AS BigInt) >> 1 AS INTEGER) > 0

