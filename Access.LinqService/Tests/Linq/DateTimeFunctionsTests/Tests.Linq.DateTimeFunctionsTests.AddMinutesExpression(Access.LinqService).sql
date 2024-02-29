BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	DateAdd('n', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

