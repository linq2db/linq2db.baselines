BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

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
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

BeforeExecute
DisposeTransaction
