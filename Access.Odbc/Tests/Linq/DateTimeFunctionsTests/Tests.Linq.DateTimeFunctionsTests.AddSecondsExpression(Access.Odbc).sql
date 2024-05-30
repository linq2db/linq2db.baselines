BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DatePart('s', DateAdd('s', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

