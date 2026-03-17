-- Access.Jet.OleDb AccessOleDb
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	DateValue(DateAdd('m', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

