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

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

