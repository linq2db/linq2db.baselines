﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = -2

SELECT
	Convert(Date, DateAdd(month, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

