﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value  -- Int32
SET     @Value = 41

SELECT
	DatePart('s', DateAdd('s', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

