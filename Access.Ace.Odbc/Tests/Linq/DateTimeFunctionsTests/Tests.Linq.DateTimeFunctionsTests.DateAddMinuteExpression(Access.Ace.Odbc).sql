BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart('n', DateAdd('n', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

