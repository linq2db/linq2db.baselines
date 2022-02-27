BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 2

SELECT
	DateAdd('m', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

