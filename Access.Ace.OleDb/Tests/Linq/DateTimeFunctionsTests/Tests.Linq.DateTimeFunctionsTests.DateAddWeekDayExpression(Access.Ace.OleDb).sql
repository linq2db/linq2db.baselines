BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	DateValue(DateAdd('w', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

