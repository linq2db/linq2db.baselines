﻿BeforeExecute
-- SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime2, N'2010-' + format([p].[ID], 'd2') + N'-01 20:35:44') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

