BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] > 1000

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[p].[ParentID],
	[p].[ParentID] as [ParentID_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @id

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] > 1000

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

