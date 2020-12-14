BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

BeforeExecute
-- SqlServer.2008
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID]
FROM
	[Child] [keyParam]
WHERE
	[keyParam].[ParentID] = @ParentID

