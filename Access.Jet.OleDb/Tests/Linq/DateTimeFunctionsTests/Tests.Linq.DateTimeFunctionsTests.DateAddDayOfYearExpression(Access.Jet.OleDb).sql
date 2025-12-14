-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 3

SELECT
	DateValue(DateAdd('y', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

