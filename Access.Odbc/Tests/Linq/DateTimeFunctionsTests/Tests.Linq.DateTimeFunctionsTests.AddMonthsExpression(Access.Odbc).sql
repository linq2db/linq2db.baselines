BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -2

SELECT
	DateValue(DateAdd('m', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

