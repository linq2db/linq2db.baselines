﻿BeforeExecute
-- SqlServer.2008

SELECT
	Convert(NVarChar(100), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

