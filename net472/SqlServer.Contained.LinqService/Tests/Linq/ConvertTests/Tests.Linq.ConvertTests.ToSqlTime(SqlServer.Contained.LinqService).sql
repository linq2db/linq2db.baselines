﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Convert(VarChar(11), DatePart(hour, [t].[DateTimeValue])) + N':01:01'
FROM
	[LinqDataTypes] [t]

