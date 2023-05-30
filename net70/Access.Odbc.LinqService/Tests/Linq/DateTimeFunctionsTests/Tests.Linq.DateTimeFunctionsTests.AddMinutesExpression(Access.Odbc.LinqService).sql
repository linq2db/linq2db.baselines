BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = -8

SELECT
	DateAdd('n', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

