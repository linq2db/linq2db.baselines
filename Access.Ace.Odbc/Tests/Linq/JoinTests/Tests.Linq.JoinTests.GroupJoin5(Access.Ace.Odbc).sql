-- Access.Ace.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[ch].[ParentID]
		FROM
			[Child] [ch]
		WHERE
			[p].[ParentID] = [ch].[ParentID]
		ORDER BY
			[ch].[ChildID]
	),
	(
		SELECT TOP 1
			[ch_1].[ChildID]
		FROM
			[Child] [ch_1]
		WHERE
			[p].[ParentID] = [ch_1].[ParentID]
		ORDER BY
			[ch_1].[ChildID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] >= 1
ORDER BY
	[p].[ParentID]

