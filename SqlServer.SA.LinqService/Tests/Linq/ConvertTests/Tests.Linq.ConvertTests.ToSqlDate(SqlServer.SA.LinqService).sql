﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

