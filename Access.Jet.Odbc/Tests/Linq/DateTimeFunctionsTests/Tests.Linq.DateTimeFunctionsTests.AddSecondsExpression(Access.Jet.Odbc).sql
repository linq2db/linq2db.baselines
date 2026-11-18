-- Access.Jet.Odbc AccessODBC
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart('s', DateAdd('s', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

