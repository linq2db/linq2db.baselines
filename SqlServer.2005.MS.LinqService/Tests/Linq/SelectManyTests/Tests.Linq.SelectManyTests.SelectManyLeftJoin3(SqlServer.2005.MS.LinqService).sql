BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON 1=1
WHERE
	[p].[ParentID] = [ch].[ParentID]

