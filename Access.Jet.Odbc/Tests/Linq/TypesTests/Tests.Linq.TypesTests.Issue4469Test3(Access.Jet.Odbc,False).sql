BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param Double
SET     @param = 33
DECLARE @param Double
SET     @param = 33
DECLARE @param Double
SET     @param = 33

SELECT TOP 2
	[v].[Integer] / CVar(?),
	[v].[Decimal] / CVar(?),
	[v].[Double] / CVar(?)
FROM
	[Issue4469Table] [v]

