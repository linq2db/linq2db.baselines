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
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] > 1000

