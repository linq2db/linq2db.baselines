-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	DateValue(DateAdd('m', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

