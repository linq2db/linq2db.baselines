BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT 
	DateAdd('d', @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

