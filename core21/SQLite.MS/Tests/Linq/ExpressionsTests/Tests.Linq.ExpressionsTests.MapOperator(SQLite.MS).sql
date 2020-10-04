BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	Cast([p].[ParentID] as BigInt) >> 1 > 0

