BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @part1  -- Int16
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	DateAdd('h', ([t].[SmallIntValue] + CVar(?)) - CVar(?), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

