﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

