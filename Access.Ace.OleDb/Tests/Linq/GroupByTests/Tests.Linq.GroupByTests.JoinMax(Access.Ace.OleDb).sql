-- Access.Ace.OleDb AccessOleDb

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN (
			SELECT
				MAX([max_1].[ChildID]) as [c1]
			FROM
				[Child] [max_1]
			GROUP BY
				[max_1].[ParentID]
		) [max_2] ON ([ch].[ChildID] = [max_2].[c1])

