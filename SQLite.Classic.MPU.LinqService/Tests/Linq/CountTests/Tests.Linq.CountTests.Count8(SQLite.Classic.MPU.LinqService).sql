BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]

