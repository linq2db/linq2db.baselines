BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2 DESC

