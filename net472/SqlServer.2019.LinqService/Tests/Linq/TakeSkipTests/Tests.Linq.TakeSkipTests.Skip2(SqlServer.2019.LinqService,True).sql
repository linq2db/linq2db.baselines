BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ChildID] > 3 OR [ch].[ChildID] < 4)
ORDER BY
	1
OFFSET @skip ROWS

