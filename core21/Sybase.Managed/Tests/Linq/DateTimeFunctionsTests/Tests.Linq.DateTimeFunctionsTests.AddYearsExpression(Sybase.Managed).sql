﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	DateAdd(year, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

