-- SqlServer.2008.MS SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @ParentID

-- SqlServer.2008.MS SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT TOP (2)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

