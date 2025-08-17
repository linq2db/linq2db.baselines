BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@ChildID
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DELETE [c_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

