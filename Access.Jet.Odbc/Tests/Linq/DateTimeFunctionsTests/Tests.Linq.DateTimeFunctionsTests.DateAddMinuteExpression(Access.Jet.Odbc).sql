BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart('n', DateAdd('n', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

