-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1],
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, 0, NULL),
	[a_Parent].[ParentID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
WHERE
	[ch].[ParentID] = 2

