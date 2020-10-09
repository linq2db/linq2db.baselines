BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT 
	[ch].[ParentID], 
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100
ORDER BY
	1
OFFSET @skip ROWS

