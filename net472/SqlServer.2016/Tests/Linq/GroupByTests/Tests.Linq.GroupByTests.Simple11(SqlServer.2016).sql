BeforeExecute
-- SqlServer.2016

SELECT
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]
FROM
	[GrandChild] [selectParam]
GROUP BY
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]

BeforeExecute
-- SqlServer.2016
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

SELECT
	[elemParam].[ChildID]
FROM
	[GrandChild] [elemParam]
WHERE
	[elemParam].[ParentID] + 1 = @ParentID AND [elemParam].[ChildID] = @ChildID

