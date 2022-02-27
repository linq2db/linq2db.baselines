BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ChildID] > 3 OR [ch].[ChildID] < 4)
ORDER BY
	1
OFFSET 3 ROWS

