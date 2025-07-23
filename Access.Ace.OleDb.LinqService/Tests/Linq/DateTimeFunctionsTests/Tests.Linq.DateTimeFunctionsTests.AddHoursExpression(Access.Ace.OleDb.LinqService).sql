BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Hour Integer -- Int32
SET     @Hour = 22

SELECT
	DatePart('h', DateAdd('h', @Hour, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

