-- Access.Jet.Odbc AccessODBC
DECLARE @str NVarChar(2) -- String
SET     @str = 'zz'

UPDATE
	[AlignedSetData] [t1]
SET
	                  [t1].[Value] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[AlignedSetData] [t1]

