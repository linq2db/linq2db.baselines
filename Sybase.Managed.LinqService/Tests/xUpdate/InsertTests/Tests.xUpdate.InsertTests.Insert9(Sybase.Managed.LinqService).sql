BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Parent]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
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
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[p].[ParentID],
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Parent]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1000

