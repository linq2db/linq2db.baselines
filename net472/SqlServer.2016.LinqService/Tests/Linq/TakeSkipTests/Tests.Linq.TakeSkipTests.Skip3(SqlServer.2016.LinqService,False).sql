BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100
ORDER BY
	1
OFFSET 3 ROWS

