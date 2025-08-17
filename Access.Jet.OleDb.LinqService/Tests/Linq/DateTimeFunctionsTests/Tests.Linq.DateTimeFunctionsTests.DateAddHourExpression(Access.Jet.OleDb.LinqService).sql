BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	DatePart('h', DateAdd('h', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

