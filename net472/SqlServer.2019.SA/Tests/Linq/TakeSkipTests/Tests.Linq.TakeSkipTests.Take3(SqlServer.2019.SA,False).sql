BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT TOP (3)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	([ch].[ChildID] > 3 OR [ch].[ChildID] < 4)

