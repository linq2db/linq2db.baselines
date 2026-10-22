-- Access.Ace.Odbc AccessODBC
DECLARE @str NVarChar(2) -- String
SET     @str = 'zz'

UPDATE
	[AlignedSetData] [t1]
SET
	                  [t1].[Value] = ?

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[AlignedSetData] [t1]

