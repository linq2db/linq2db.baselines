﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 22

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Hour')
FROM
	[LinqDataTypes] [t]

