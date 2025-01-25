BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	DateValue(DateAdd('w', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

