﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = @from
WHERE
	[t].[from] = 1

