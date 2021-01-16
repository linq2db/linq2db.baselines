BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2005
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

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

