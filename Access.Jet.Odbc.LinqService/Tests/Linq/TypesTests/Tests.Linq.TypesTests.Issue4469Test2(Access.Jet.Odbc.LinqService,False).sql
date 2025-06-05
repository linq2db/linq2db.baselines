BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33

SELECT TOP 2
	[v].[Integer] / CVar(?),
	[v].[Decimal] / CVar(?),
	[v].[Double] / CVar(?)
FROM
	[Issue4469Table] [v]

