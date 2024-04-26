BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
-- Access AccessOleDb
DECLARE @unused Integer -- Int32
SET     @unused = 100500

AddIssue792Record

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

BeforeExecute
DisposeTransaction
