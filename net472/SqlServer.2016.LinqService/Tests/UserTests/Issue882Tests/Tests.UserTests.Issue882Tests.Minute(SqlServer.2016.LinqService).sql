﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

