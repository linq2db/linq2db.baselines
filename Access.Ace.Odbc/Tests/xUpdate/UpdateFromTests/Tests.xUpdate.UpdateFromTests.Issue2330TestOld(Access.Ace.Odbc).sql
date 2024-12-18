BeforeExecute
-- Access.Ace.Odbc AccessODBC

UPDATE
	[Parent] [w]
		INNER JOIN [Child] [b] ON ([w].[ParentID] = [b].[ParentID])
SET
	[w].[Value1] = [b].[ChildID]
WHERE
	[b].[ChildID] = (
		SELECT
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) AND
	(
		SELECT
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) IS NOT NULL AND
	[b].[ChildID] = -1

