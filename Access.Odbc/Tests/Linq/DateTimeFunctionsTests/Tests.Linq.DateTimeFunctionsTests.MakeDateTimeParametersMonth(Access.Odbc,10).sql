﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	DateSerial(2010 + [t].[ID], CVar(?), 1)
FROM
	[LinqDataTypes] [t]

