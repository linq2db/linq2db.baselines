﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

