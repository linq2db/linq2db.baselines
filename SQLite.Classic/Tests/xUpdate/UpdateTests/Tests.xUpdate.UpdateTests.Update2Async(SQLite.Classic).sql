-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[ParentID] = [Parent].[ParentID] + 1
WHERE
	[Parent].[ParentID] = @ParentID

-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

