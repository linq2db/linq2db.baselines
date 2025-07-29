BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	DatePart('n', DateAdd('n', CVar(@Value), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

