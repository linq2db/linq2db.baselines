﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	DatePart(second, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

