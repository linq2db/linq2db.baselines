﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(Date, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01')
FROM
	[LinqDataTypes] [t]

