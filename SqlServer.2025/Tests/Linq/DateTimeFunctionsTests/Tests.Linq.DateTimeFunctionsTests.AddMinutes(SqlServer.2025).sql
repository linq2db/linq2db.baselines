﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

