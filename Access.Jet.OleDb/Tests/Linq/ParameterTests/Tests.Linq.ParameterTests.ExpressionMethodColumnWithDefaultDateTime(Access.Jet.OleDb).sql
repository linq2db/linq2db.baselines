-- Access.Jet.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@value
FROM
	[DefaultDateTimeCustomer] [k_1]

