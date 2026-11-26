-- Access.Ace.Odbc AccessODBC
DECLARE @low VarChar(36) -- AnsiString
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = '00000000-0000-0000-0000-000000000002'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = '00000000-0000-0000-0000-000000000002'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	[r].[Id],
	IIF([r].[Value] BETWEEN CVar(?) AND CVar(?), True, False)
FROM
	[BetweenTextRow] [r]
WHERE
	[r].[Value] NOT BETWEEN ? AND ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[BetweenTextRow] [t1]

