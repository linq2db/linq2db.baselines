﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @unused Int -- Int32
SET     @unused = 100500

{ CALL AddIssue792Record(?) }

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792' AND [t1].[char20DataType] IS NOT NULL

BeforeExecute
DisposeTransaction
