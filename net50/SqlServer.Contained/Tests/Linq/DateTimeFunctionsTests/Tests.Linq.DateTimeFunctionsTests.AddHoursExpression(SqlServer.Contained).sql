﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @p_1 Int -- Int32
SET     @p_1 = 22

SELECT
	DatePart(hour, DateAdd(hour, @p_1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

