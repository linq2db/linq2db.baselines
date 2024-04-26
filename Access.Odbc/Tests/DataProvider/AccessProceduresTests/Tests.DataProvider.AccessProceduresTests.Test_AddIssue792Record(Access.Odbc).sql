BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @unused Int -- Int32
SET     @unused = 100500

{ CALL AddIssue792Record(?) }

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
DisposeTransaction
