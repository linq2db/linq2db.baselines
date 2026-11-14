-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1000
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

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
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

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
DELETE FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1000 AND [p].[Value1] IS NULL OR [p].[ParentID] = 1001 AND [p].[Value1] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

