﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	DatePart(year, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

