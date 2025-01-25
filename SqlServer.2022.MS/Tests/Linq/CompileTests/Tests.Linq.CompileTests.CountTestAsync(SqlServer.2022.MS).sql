BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

