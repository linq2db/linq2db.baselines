-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	DateValue(DateAdd('q', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

