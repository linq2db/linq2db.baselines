BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Parent].[Value1] = 2
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

