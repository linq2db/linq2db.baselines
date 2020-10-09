BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[Value1],
	[ParentID]
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[p]
SET
	[p].[Value1] = @Value1
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- SqlServer.2008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[p]
SET
	[p].[Value1] = @Value1
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

