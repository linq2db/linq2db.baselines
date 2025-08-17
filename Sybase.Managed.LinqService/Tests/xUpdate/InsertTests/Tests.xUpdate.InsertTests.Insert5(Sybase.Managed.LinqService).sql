BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@ChildID
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [Child]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

