﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

