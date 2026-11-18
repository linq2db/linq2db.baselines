-- Access.Jet.OleDb AccessOleDb
DECLARE @str VarWChar(2) -- String
SET     @str = 'zz'

UPDATE
	[AlignedSetData] [t1]
SET
	                  [t1].[Value] = @str

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[AlignedSetData] [t1]

