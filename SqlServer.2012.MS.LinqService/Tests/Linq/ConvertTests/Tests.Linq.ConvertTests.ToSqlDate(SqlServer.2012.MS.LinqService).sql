﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01' AS Date)
FROM
	[LinqDataTypes] [t]

