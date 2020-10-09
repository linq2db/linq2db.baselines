BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	CASE
		WHEN [p].[ParentID] = 1 THEN 1
		ELSE 0
	END = 1

