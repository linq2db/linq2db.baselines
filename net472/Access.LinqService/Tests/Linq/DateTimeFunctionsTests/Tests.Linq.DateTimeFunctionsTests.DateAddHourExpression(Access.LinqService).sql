BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = 1

SELECT
	DateAdd('h', @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

