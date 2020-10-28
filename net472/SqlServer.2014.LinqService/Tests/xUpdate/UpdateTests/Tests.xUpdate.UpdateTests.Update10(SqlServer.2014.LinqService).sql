BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[Child].[ChildID] = [c_1].[ChildID] + 1,
	[Child].[ParentID] = [p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[c_1].[ChildID] = @id AND [a_Parent].[Value1] = 1

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p1

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

