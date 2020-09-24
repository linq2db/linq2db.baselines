BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = -8

SELECT
	DateAdd('n', @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

