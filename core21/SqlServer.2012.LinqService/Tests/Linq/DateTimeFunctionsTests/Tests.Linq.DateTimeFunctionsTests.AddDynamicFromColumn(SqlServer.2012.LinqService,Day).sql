﻿BeforeExecute
-- SqlServer.2012

SELECT 
	DateAdd(day, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

