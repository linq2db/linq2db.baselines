﻿BeforeExecute
-- SqlServer.2014

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

