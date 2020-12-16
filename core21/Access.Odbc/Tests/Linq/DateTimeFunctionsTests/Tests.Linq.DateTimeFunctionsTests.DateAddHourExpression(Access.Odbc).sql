BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	DateAdd('h', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

