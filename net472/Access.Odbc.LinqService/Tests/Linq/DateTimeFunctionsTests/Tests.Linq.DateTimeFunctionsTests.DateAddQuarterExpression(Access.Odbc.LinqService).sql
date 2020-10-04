BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = -1

SELECT
	DateAdd('q', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

