﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	CONVERT(Date, DateAdd(day, @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

