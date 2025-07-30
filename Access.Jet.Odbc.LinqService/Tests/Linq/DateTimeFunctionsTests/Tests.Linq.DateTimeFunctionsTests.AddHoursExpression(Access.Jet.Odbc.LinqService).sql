BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart('h', DateAdd('h', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

