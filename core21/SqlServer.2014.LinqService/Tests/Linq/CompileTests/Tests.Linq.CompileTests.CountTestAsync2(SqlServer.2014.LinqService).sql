BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

