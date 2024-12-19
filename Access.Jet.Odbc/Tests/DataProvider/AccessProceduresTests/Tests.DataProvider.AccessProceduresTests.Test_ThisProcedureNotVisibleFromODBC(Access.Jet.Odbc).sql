BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

{ CALL ThisProcedureNotVisibleFromODBC() }

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
DisposeTransaction
