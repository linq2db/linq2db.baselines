﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	CONVERT(Date, DateAdd(year, @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

