﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	DateDiff_Big(millisecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

