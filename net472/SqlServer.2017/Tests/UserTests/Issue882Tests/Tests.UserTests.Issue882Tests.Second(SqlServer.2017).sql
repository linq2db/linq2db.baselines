﻿BeforeExecute
-- SqlServer.2017

SELECT 
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

