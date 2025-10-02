BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 20000

UPDATE
	[parent_1]
SET
	[parent_1].[ParentID] = @ParentID
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [parent_1] ON [parent_1].[ParentID] = [child_1].[ParentID]
WHERE
	[child_1].[Value1] = 20000

