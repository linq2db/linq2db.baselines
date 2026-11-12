-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1010
DECLARE @Value1  -- Int32
SET     @Value1 = 1010

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
UPDATE
	[Parent] [t]
SET
	[t].[Value1] = 1012
WHERE
	[t].[ParentID] = 1010

RollbackTransaction
-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

