﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @part1 SmallInt -- Int16
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateAdd('m', ([t].[SmallIntValue] + CVar(?)) - CVar(?), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

