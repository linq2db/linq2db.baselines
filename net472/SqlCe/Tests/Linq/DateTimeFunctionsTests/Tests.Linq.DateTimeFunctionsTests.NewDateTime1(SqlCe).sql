﻿BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, Convert(NVarChar(4000), DatePart(year, [p].[DateTimeValue])) + '-10-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

