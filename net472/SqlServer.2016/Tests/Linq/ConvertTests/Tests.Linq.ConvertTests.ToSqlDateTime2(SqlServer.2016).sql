﻿BeforeExecute
-- SqlServer.2016

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

