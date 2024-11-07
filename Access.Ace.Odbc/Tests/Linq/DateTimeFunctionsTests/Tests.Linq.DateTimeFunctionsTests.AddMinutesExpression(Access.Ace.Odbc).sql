BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Minute  -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', CVar(?), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

