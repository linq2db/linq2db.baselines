﻿BeforeExecute
-- SqlServer.2008

SELECT
	Convert(DateTime2, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, Convert(DateTime2, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue])) + N'-10-1 20:35:44')) = 10

