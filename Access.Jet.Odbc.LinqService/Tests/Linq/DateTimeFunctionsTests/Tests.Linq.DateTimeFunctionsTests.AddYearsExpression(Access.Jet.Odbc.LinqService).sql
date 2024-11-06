BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Date  -- Int32
SET     @Date = 1

SELECT
	DateValue(DateAdd('yyyy', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

