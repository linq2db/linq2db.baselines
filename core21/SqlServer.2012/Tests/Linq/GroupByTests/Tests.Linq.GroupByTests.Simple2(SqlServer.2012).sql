BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

BeforeExecute
-- SqlServer.2012
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

SELECT
	[keyParam].[ParentID],
	[keyParam].[ChildID],
	[keyParam].[GrandChildID]
FROM
	[GrandChild] [keyParam]
WHERE
	([keyParam].[ParentID] = @ParentID AND [keyParam].[ChildID] = @ChildID)

