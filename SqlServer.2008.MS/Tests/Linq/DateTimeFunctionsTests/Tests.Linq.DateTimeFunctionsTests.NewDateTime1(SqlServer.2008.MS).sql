﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(year, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, CAST(RIGHT('0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) + N'-10-01' AS DateTime2)) = 10

