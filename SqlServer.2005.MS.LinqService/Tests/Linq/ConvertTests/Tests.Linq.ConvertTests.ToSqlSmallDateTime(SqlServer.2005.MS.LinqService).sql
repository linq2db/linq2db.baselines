﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS NVarChar(11)) + N'-01-01 00:20:00' AS DateTime)
FROM
	[LinqDataTypes] [t]

