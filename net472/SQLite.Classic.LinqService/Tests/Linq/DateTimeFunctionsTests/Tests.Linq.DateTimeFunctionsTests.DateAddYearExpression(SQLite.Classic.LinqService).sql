﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 11

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Year')
FROM
	[LinqDataTypes] [t]

