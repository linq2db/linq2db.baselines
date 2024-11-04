BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF(COUNT(*) = 0, True, False)
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[ChildID] = 11 AND [x].[GrandChildID] = 777)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF(COUNT(*) = 0, True, False)
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT ([x].[GrandChildID] = 777 AND [x].[ChildID] = 11)

