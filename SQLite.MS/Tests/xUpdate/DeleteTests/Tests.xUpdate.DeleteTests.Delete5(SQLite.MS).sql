-- SQLite.MS SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.MS SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SQLite.MS SQLite
DECLARE @values_0  -- Int32
SET     @values_0 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values_0,
	1
)

-- SQLite.MS SQLite
DECLARE @values_0  -- Int32
SET     @values_0 = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values_0,
	1
)

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SQLite.MS SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] IN (1001, 1002)

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

