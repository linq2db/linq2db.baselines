﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	DatePart(year, [t].[DateTimeValue]) + 1
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS VarChar(4)), 4) + N'-10-01' AS DateTime)) = 10

