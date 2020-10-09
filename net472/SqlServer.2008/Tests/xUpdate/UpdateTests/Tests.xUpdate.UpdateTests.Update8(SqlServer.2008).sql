BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2008
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

BeforeExecute
-- SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[t1]
SET
	[t1].[Value1] = @Value1
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1001

SELECT TOP (@take) 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID_1

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

