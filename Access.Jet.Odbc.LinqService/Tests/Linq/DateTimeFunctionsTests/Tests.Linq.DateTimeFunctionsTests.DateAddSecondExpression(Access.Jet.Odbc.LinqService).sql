BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 41

SELECT
	DatePart('s', DateAdd('s', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

