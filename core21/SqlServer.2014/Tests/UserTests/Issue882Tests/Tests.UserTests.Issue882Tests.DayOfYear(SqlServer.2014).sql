﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

