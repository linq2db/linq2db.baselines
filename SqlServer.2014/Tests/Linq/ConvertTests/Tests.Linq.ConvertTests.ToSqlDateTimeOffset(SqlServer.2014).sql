﻿BeforeExecute
--  SqlServer.2014

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01 00:20:00' AS DateTime)
FROM
	[LinqDataTypes] [t]

