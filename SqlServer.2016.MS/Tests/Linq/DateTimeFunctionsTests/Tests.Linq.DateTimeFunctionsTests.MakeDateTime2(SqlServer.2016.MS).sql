﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DATETIMEFROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIMEFROMPARTS(2010, [t].[ID], 1, 20, 35, 44, 0)) = 2010

