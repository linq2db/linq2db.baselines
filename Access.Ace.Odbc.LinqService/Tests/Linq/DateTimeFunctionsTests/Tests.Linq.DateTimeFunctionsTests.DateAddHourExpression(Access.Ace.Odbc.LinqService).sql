BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart('h', DateAdd('h', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

