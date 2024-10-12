BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(CASE
		WHEN [ch].[ChildID] > 30 THEN 1
		ELSE NULL
	END),
	SUM(CASE
		WHEN [ch].[ChildID] > 30 THEN [ch].[ChildID]
		ELSE NULL
	END),
	MIN(CASE
		WHEN [ch].[ChildID] > 30 THEN [ch].[ChildID]
		ELSE NULL
	END),
	MAX(CASE
		WHEN [ch].[ChildID] > 30 THEN [ch].[ChildID]
		ELSE NULL
	END),
	AVG(CASE
		WHEN [ch].[ChildID] > 30 THEN [ch].[ChildID]
		ELSE NULL
	END)
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] > 30
GROUP BY
	[ch].[ParentID]

