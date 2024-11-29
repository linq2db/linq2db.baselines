BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart('h', DateAdd('h', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

