-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SqlCe
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@ChildID as [c1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

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

