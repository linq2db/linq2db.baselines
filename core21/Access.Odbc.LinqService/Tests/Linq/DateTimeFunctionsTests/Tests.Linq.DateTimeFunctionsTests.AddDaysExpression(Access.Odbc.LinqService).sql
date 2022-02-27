BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 5

SELECT
	DateAdd('d', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

