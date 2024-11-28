BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	DateValue(DateAdd('m', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

