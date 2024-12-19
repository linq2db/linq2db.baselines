BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DateValue(DateAdd('w', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

