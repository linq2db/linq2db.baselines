BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ParentID] = [ch].[ParentID] AND [ch].[ChildID] < 30 AND
			[ch].[ChildID] >= 20
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

