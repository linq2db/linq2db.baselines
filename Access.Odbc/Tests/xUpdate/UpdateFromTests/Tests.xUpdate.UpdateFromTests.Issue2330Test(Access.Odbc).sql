BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[Parent] [u],
	(
		SELECT
			[b].[ChildID],
			(
				SELECT
					MAX([b2].[ParentID])
				FROM
					[Child] [b2]
			) as [MAX_1],
			[w].[ParentID],
			[w].[Value1]
		FROM
			[Parent] [w]
				INNER JOIN [Child] [b] ON ([w].[ParentID] = [b].[ParentID])
	) [t1]
SET
	[u].[Value1] = [t1].[ChildID]
WHERE
	[t1].[ChildID] = [t1].[MAX_1] AND
	[t1].[ChildID] = -1 AND
	[u].[ParentID] = [t1].[ParentID] AND
	([u].[Value1] = [t1].[Value1] OR [u].[Value1] IS NULL AND [t1].[Value1] IS NULL)

