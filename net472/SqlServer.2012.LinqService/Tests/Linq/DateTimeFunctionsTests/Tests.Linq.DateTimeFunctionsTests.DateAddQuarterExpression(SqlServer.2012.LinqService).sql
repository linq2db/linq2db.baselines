﻿BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	DateAdd(quarter, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

