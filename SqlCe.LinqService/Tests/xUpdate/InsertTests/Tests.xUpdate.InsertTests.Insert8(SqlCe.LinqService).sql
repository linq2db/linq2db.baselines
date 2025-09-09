BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@id
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlCe (asynchronously)

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

