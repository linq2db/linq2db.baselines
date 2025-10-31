-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] IN (1001, 1002)

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

