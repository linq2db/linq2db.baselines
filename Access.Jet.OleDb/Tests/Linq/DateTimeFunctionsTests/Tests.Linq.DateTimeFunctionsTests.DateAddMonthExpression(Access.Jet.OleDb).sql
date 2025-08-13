BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	DateValue(DateAdd('m', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

