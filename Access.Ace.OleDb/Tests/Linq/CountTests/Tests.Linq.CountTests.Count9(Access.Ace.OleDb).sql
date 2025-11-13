-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = 1

-- Access.Ace.OleDb AccessOleDb

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])

