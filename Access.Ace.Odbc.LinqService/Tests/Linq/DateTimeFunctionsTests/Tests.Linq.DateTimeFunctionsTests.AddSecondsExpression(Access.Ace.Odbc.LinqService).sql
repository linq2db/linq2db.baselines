BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart('s', DateAdd('s', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

