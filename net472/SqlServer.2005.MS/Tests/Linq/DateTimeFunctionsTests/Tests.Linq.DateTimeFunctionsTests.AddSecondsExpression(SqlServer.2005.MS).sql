﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p_1 Int -- Int32
SET     @p_1 = -35

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

