﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

