﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @unused Integer -- Int32
SET     @unused = 100500

AddIssue792Record

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

BeforeExecute
DisposeTransaction
