﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

