﻿BeforeExecute
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
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Parent].[Value1] = @Value1
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
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Parent].[Value1] = @Value1
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
	[p].[ParentID] = @id AND [p].[Value1] = 3

