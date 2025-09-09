BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	DatePart('s', DateAdd('s', @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

