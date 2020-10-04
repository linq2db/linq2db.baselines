BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = -35

SELECT
	DateAdd('s', @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

