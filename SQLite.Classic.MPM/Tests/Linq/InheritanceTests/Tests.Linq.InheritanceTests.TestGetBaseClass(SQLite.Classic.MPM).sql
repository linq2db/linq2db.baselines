BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [x].[Value1] = 2 THEN 1
		ELSE 0
	END,
	[x].[ParentID],
	[x].[Value1],
	CASE
		WHEN [x].[Value1] = 1 THEN 1
		ELSE 0
	END
FROM
	[Parent] [x]
WHERE
	[x].[Value1] = 1 OR [x].[Value1] = 2

