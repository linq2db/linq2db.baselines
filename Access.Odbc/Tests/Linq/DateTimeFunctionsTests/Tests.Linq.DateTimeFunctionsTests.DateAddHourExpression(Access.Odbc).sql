BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	DatePart('h', DateAdd('h', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

