﻿BeforeExecute
-- SqlServer.2017

SELECT
	DATETIME2FROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 20, 35, 44, 0, 3)
FROM
	[LinqDataTypes] [t]

