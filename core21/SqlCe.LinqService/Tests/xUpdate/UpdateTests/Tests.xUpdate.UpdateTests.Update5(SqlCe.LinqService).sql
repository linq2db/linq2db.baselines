BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlCe
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[Child].[ChildID] = @ChildID
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ChildID] = @id AND
			[a_Parent].[Value1] = 1 AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

BeforeExecute
-- SqlCe
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @ChildID

BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

