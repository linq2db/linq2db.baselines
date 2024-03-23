BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [ch] ON 1=1
WHERE
	[t1].[ParentID] = [ch].[ParentID]

