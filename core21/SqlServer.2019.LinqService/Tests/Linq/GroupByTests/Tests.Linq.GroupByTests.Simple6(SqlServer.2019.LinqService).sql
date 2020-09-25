BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

SELECT
	[ch].[GrandChildID]
FROM
	[GrandChild] [ch]
WHERE
	([ch].[ParentID] = @ParentID AND [ch].[ChildID] = @ChildID)

