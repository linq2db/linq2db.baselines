BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	DatePart('h', DateAdd('h', CVar(@Value), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

