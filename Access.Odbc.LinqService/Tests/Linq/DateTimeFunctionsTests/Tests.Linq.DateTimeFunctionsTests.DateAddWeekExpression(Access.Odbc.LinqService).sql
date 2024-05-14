BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	DateValue(DateAdd('ww', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

