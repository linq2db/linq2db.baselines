﻿BeforeExecute
-- SqlCe

SELECT 
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

