﻿BeforeExecute
-- SqlServer.2012

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS VarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

