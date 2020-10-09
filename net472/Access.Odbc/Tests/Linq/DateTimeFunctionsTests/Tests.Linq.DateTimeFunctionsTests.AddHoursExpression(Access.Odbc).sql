BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 22

SELECT 
	DateAdd('h', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

