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
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[t1]
SET
	[t1].[ParentID] = [t1].[ParentID] + 1
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

