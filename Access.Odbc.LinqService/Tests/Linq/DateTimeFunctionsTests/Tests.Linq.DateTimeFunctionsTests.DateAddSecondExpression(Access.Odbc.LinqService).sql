﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 41

SELECT
	DatePart('s', DateAdd('s', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

