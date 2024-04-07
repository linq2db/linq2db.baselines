BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = -35

SELECT
	DateAdd('s', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

