BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 1

SELECT
	DatePart('h', DateAdd('h', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

