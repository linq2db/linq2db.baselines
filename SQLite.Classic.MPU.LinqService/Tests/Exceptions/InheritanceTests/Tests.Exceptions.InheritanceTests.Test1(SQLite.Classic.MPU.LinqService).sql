BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Value1] = 2 THEN 1
		ELSE 0
	END,
	[p].[ParentID],
	[p].[Value1],
	CASE
		WHEN [p].[Value1] = 1 THEN 1
		ELSE 0
	END
FROM
	[Parent] [p]

