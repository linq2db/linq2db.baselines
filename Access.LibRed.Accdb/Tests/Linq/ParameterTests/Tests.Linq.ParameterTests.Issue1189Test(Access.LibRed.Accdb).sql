-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@value
FROM
	[Issue1189Customer] [k_1]

