BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	CASE
		WHEN [p].[ParentID] <> 1 THEN 0
		ELSE 1
	END = 1

