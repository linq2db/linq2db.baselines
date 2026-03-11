-- SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	20000
)

-- SQLite.MS SQLite

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

-- SQLite.MS SQLite
DECLARE @Value1  -- Int32
SET     @Value1 = 5

UPDATE
	[Parent]
SET
	[Value1] = @Value1
FROM
	[Child] [child_1]
WHERE
	[child_1].[ChildID] = 10000 AND [child_1].[ParentID] = [Parent].[ParentID]

-- SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] = 10000

-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 20000

