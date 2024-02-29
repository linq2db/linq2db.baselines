BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	DateAdd('d', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

