﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = -2

SELECT
	DateAdd(month, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

