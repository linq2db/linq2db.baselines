﻿BeforeExecute
-- SqlServer.2016

SELECT
	Convert(Date, DateAdd(year, 11, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

