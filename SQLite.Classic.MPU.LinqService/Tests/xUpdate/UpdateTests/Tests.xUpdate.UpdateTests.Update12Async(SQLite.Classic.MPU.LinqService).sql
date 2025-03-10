BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

UPDATE
	[Parent]
SET
	[ParentID] = [p2].[ParentID]
FROM
	[Parent] [p2]
WHERE
	[Parent].[ParentID] < 3 AND [Parent].[ParentID] = [p2].[ParentID]

