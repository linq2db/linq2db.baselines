BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value  -- Int32
SET     @Value = 11

SELECT
	DateValue(DateAdd('yyyy', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

