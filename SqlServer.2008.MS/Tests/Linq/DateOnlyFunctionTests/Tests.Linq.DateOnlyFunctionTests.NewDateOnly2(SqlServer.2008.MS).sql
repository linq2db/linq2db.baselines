﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(RIGHT('0' + CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)), 4) + N'-10-01' AS Date)
FROM
	[LinqDataTypes] [p]

