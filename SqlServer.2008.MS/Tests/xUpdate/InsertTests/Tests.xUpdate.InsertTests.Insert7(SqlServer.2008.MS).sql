-- SqlServer.2008.MS SqlServer.2008

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	@id,
	@ParentID
)

-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- SqlServer.2008.MS SqlServer.2008

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

