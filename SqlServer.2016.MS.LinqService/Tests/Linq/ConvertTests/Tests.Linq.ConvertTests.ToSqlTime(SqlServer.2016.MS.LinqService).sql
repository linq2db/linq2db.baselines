﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS VarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

