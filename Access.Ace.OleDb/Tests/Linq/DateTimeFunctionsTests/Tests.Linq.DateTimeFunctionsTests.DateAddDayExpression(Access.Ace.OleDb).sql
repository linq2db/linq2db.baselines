BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	DateValue(DateAdd('d', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

