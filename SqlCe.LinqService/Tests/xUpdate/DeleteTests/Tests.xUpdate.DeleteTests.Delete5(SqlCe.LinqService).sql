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

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	1002,
	1
)

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
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
	Count(*) as [Count_1]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

