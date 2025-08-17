BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
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

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @param Int -- Int32
SET     @param = 200

SELECT
	[c_1].[ParentID] - @param,
	[c_1].[ChildID]
FROM
	[TInserted] [c_1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

