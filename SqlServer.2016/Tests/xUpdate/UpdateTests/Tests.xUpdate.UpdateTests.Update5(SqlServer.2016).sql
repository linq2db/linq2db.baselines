BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlServer.2016
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[c_1]
SET
	[c_1].[ChildID] = @ChildID
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[c_1].[ChildID] = @id AND [a_Parent].[Value1] = 1

BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

