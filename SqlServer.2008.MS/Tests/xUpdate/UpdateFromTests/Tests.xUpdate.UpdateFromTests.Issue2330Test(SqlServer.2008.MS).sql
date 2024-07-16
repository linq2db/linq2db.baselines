BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) AND
	[b].[ChildID] = -1

