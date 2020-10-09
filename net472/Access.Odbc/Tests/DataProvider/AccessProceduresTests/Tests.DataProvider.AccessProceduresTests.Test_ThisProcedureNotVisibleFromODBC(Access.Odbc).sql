BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Count(*)
FROM
	[AllTypes] [_]
WHERE
	[_].[char20DataType] = 'issue792'

BeforeExecute
-- Access.Odbc AccessODBC

{ CALL ThisProcedureNotVisibleFromODBC() }

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Count(*)
FROM
	[AllTypes] [_]
WHERE
	[_].[char20DataType] = 'issue792'

