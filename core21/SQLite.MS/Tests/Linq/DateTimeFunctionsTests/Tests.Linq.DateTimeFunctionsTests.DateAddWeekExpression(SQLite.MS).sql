﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = -1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p_1*7) || ' Day')
FROM
	[LinqDataTypes] [t]

