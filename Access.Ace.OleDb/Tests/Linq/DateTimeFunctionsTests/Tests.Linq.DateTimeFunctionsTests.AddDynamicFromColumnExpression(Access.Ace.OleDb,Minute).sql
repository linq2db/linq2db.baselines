BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	DateAdd('n', ([t].[SmallIntValue] + CVar(@part1)) - CVar(@part2), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

