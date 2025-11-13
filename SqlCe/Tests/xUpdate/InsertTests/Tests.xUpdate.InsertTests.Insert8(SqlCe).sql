-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SqlCe
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

-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

