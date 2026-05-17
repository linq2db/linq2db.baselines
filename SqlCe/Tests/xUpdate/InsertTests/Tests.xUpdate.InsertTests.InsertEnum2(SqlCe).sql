-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

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
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

