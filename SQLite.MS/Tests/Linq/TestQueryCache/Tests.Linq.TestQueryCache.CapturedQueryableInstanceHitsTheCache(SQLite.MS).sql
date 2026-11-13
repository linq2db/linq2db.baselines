-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 3

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] > 0 AND [c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] > 0 AND [c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

-- SQLite.MS SQLite
DECLARE @id Integer -- Int32
SET     @id = 3

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] > 0 AND [c_1].[ParentID] = [p].[ParentID]
	) AND
	[p].[ParentID] >= @id

