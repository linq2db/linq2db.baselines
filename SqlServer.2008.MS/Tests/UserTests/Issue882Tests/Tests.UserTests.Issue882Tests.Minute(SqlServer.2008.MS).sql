﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

