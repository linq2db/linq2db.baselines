﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	DateValue(DateAdd('yyyy', ([t].[SmallIntValue] + @part1) - @part2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

