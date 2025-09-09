BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33
DECLARE @param VarChar(2, 0) -- AnsiString
SET     @param = 33

SELECT TOP 2
	[v].[Integer] / ?,
	[v].[Decimal] / ?,
	[v].[Double] / ?
FROM
	[Issue4469Table] [v]

