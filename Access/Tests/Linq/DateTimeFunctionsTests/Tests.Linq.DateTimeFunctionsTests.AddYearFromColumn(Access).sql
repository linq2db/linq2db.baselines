﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('yyyy', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

