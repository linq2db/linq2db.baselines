﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	CAST(DatePart(hour, [t].[DateTimeValue]) AS VarChar(11)) + N':01:01'
FROM
	[LinqDataTypes] [t]

