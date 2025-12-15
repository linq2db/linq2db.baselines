-- SqlServer.2008
DECLARE @param Int -- Int32
SET     @param = 200
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	INSERTED.[ChildID] + INSERTED.[ParentID] + @param
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

-- SqlServer.2008
DECLARE @param Int -- Int32
SET     @param = 200

SELECT
	[c_1].[ChildID] + [c_1].[ParentID] + @param
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2008

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

