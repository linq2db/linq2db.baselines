BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	DateValue(DateAdd('q', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

