﻿BeforeExecute
-- SqlServer.2005

SELECT 
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

