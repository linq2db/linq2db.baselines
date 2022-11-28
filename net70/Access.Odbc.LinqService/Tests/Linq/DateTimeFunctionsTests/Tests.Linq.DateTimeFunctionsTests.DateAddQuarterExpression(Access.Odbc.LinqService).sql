BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	DateAdd('q', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

