BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param VarChar -- AnsiString
SET     @param = 33
DECLARE @param Double
SET     @param = 33

SELECT TOP 2
	[v].[Integer] / CVar(?),
	[v].[Decimal] / CVar(?),
	[v].[Double] / CVar(?)
FROM
	[Issue4469Table] [v]

