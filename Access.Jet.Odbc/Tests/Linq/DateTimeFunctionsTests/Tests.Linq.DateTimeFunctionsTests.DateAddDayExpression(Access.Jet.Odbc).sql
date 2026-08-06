-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DateValue(DateAdd('d', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

