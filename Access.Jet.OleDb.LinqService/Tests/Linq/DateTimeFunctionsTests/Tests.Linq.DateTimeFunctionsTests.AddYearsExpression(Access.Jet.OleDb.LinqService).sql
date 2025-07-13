BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	DateValue(DateAdd('yyyy', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

