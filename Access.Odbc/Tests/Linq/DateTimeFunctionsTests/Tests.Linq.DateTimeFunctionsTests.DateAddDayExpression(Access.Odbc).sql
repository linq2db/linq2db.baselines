BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateValue(DateAdd('d', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

