-- Access.Jet.OleDb AccessOleDb
DECLARE @text VarWChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CStr([c_1].[ChildID]) + ',' + @text
FROM
	[Child] [c_1]

