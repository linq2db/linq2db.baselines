﻿BeforeExecute
-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	Convert(Date, DateAdd(dayofyear, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

