BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Date  -- Int32
SET     @Date = -2

SELECT
	DateValue(DateAdd('m', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

