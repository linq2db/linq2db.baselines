BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	([t].[ParentID] * 1000) / 1000
FROM
	[Child] [t]
WHERE
	[t].[ParentID] * 1000 > 2000

