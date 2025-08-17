BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

