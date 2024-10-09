BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [t1].[Value1] = 1 THEN 1
		ELSE 0
	END,
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[Value1]
FROM
	[Parent] [t1]

