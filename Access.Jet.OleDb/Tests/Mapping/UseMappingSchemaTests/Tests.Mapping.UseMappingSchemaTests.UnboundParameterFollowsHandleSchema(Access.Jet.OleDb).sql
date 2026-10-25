-- Access.Jet.OleDb AccessOleDb
DECLARE @token VarWChar(2) -- String
SET     @token = 'Bx'

SELECT
	CVar(@token)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

