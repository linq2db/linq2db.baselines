BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	DatePart('s', DateAdd('s', CVar(@Second), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

