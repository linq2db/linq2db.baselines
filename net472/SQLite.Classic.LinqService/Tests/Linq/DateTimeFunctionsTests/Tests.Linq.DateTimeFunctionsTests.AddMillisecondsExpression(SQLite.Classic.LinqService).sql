﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_1  -- Double
SET     @p_1 = 226

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p_1/1000.0) || ' Second')
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

