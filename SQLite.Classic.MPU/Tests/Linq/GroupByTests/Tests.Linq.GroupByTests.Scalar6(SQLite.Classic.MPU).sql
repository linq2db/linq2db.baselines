BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX(CASE
		WHEN [ch].[ParentID] < 3 THEN [ch].[ChildID]
		ELSE NULL
	END)
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] < 3
GROUP BY
	[ch].[ParentID]

