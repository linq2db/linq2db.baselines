BeforeExecute
-- SqlServer.2022 (asynchronously)
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
-- SqlServer.2022 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[ParentID] = [Parent].[ParentID] + 1
WHERE
	[Parent].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p

