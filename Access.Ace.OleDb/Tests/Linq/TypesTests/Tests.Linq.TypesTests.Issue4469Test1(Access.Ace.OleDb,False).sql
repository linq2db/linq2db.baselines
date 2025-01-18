BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 33
DECLARE @param_2 Integer -- Int32
SET     @param_2 = 33

SELECT TOP 2
	[v].[Integer] / CVar(@param),
	[v].[Decimal] / CVar(@param_1),
	[v].[Double] / CVar(@param_2)
FROM
	[Issue4469Table] [v]

