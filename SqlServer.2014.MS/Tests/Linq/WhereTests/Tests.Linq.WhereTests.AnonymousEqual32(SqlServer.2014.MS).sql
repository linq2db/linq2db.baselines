-- SqlServer.2014.MS SqlServer.2014

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	2 = [ch].[ParentID] AND 21 = [ch].[ChildID]

