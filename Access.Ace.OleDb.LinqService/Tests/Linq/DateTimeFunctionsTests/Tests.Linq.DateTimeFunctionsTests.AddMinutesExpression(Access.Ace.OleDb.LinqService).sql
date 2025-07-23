BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', @Minute, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

