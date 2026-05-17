-- SqlServer.2019.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2019.MS SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 100
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
OUTPUT
	INSERTED.[ChildID],
	INSERTED.[ParentID] + @param
INTO [TInserted]
(
	[ChildID],
	[ParentID]
)
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

-- SqlServer.2019.MS SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 100

SELECT
	[c_1].[ParentID] - @param,
	[c_1].[ChildID]
FROM
	[TInserted] [c_1]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- SqlServer.2019.MS SqlServer.2019

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

