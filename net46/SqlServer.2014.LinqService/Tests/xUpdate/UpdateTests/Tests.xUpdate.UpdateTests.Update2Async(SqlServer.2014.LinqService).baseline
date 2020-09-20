BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[p]
SET
	[p].[ParentID] = [p].[ParentID] + 1
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

