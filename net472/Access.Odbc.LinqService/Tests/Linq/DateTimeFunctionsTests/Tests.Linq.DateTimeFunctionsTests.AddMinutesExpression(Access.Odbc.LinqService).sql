BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Int -- Int32
SET     @p_1 = -8

SELECT
	DateAdd('n', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

