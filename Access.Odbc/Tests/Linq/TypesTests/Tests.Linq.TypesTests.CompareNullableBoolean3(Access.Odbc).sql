﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param2 Bit -- Boolean
SET     @param2 = False

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[BoolValue] = ?)

