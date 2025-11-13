-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[w]
SET
	[w].[Value1] = [b].[ChildID]
FROM
	[Parent] [w]
		INNER JOIN [Child] [b] ON [w].[ParentID] = [b].[ParentID]
WHERE
	[b].[ChildID] = (
		SELECT
			MAX([t1].[ParentID])
		FROM
			[Child] [t1]
	) AND
	[b].[ChildID] = -1

