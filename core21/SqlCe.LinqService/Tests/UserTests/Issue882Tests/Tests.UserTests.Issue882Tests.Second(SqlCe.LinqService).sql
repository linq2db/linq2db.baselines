﻿BeforeExecute
-- SqlCe

SELECT 
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

