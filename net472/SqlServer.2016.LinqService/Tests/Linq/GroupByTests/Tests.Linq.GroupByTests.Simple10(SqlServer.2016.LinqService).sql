BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

