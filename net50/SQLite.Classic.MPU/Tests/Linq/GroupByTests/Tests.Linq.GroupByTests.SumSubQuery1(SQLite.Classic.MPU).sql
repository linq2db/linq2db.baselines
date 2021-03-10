BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	Sum([ch].[ParentID] - 2)
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] + 2 > @n
GROUP BY
	[ch].[ParentID] + 1,
	[ch].[ChildID]

