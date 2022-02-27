BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = -35

SELECT
	DateAdd('s', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

