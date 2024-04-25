BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
-- Access.Odbc AccessODBC

{ CALL ThisProcedureNotVisibleFromODBC() }

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
DisposeTransaction
