BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100

