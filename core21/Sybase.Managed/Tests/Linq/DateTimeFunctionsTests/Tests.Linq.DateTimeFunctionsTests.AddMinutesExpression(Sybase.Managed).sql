﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Double
SET     @p_1 = -8

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

