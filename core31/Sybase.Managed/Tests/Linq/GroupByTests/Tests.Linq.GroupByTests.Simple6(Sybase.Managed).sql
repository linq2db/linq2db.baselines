BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 22

SELECT
	[ch].[GrandChildID]
FROM
	[GrandChild] [ch]
WHERE
	([ch].[ParentID] = @ParentID AND [ch].[ChildID] = @ChildID)

