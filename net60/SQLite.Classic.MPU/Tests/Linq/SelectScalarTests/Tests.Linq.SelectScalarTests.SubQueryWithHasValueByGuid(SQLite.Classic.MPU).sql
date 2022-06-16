BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT
			[r].[GuidValue]
		FROM
			[LinqDataTypes] [r]
		LIMIT 1
	) IS NOT NULL

