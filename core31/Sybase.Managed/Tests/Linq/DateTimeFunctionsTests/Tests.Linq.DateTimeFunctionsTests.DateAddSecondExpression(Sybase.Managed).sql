﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 41

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

