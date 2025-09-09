BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Double
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT TOP 2
	[v].[Integer] / @param,
	[v].[Decimal] / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

