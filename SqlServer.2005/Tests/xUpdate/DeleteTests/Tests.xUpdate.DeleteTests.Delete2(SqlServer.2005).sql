BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

