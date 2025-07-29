BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	DatePart('s', DateAdd('s', CVar(@Value), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

