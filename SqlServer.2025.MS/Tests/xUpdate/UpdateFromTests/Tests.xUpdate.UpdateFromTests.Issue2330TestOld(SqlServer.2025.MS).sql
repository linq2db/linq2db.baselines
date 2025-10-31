BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

