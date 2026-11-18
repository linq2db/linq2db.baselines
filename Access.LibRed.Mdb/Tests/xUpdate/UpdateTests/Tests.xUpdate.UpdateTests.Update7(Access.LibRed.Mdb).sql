-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = 1

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 2
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = @Value1
WHERE
	[p].[ParentID] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 3
DECLARE @id  -- Int32
SET     @id = 1001

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = @Value1
WHERE
	[p].[ParentID] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

