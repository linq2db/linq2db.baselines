﻿BeforeExecute
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

BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[ParentID] = [Parent].[ParentID] + 1
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

