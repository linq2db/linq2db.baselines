﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	(Iif([_].[BigIntValue] IN (2), True, False) = False OR Iif([_].[BigIntValue] IN (2), True, False) IS NULL)

