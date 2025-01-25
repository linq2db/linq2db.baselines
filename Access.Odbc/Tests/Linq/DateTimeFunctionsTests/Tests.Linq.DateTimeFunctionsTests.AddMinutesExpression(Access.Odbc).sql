BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -8

SELECT
	DatePart('n', DateAdd('n', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

