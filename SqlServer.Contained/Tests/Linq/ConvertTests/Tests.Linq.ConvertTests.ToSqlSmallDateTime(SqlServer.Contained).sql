﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01 00:20:00' AS DateTime2)
FROM
	[LinqDataTypes] [t]

