﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Convert(DateTime, Convert(NVarChar(100), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

