﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[col1]    Int NOT NULL,
	[Column1] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @A123456789b123456789c123456789d123456789e123456789f123456789 Int -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789f123456789 = 2

UPDATE
	[testparams] [t]
SET
	[t].[col1] = ?
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

