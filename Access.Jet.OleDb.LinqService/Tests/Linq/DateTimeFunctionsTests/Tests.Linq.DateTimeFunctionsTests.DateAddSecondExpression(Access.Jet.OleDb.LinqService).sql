BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	DatePart('s', DateAdd('s', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

