-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

-- SqlCe
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

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = @ParentID

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

