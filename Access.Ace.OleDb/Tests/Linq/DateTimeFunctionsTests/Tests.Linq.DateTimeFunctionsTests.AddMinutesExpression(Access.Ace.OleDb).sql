BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', CVar(@Minute), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

