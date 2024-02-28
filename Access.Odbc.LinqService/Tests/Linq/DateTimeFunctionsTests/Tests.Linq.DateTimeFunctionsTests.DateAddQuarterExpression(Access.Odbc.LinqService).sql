BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = -1

SELECT
	DateAdd('q', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

