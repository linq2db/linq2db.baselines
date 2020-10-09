BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = -8

SELECT 
	DateAdd('n', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

