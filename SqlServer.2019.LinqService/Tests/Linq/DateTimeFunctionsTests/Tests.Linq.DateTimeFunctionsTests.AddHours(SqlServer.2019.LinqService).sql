﻿BeforeExecute
--  SqlServer.2019

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

