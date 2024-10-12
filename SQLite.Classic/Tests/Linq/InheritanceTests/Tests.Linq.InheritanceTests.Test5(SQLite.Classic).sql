BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Value1] = 1 THEN 1
		ELSE 0
	END,
	[p].[ParentID],
	[p].[Value1],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 0 AND [p].[Value1] <> 1

