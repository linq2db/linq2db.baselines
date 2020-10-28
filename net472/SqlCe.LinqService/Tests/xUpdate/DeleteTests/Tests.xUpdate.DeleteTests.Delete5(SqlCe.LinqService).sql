BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@p1,
	1
)

BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@p1,
	1
)

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] IN (1001, 1002)

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

