BeforeExecute
-- Access AccessOleDb

SELECT
	[child_1].[ParentID],
	[child_1].[ChildID]
FROM
	(
		SELECT
			[ch].[ChildID]
		FROM
			[GrandChild] [g_1]
				INNER JOIN [Child] [ch] ON ([g_1].[ChildID] = [ch].[ChildID])
		UNION
		SELECT
			[ch_1].[ChildID]
		FROM
			[Child] [ch_1]
				INNER JOIN [Parent] [p] ON ([ch_1].[ParentID] = [p].[ParentID])
	) [r]
		INNER JOIN [Child] [child_1] ON ([r].[ChildID] = [child_1].[ChildID])

