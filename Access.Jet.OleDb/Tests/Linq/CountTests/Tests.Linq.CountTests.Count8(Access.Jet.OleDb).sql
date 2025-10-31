BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Child] [ch]
		INNER JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])

