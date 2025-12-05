-- SqlServer.SA SqlServer.2019
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

-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- SqlServer.SA SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[c_1]
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 1
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[c_1].[ChildID] = @id AND [a_Parent].[Value1] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

