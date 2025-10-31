-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SqlCe
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 1001

-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

