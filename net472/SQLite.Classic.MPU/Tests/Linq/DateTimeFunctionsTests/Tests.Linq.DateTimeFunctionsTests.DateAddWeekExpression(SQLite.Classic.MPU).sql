﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1  -- Double
SET     @p_1 = -1

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p_1*7) || ' Day')
FROM
	[LinqDataTypes] [t]

