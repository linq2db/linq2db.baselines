BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart('h', DateAdd('h', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

