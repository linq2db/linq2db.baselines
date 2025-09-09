BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

