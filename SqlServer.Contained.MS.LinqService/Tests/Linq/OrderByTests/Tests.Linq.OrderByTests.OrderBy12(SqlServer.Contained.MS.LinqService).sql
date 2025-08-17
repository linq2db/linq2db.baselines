BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID] % 2 DESC

