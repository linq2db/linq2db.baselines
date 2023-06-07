BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateAdd('ww', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

