﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[1p] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @1p Int -- Int32
SET     @1p = 2

UPDATE
	[testparams] [t]
SET
	[t].[1p] = ?
WHERE
	[t].[1p] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

