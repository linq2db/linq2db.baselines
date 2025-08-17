BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4

SELECT
	DateValue(DateAdd('yyyy', ([t].[SmallIntValue] + ?) - ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

