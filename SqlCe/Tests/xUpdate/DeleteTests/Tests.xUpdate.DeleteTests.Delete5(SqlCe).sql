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
DECLARE @values Int -- Int32
SET     @values = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- SqlCe
DECLARE @values Int -- Int32
SET     @values = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- SqlCe
SELECT
	COUNT(*)
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
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

