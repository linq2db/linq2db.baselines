﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

