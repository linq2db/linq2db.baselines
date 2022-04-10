﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = #2009-09-24 09:19:29#

SELECT
	Count(*)
FROM
	[LinqDataTypes] [x]
WHERE
	([x].[DateTimeValue2] IN (?) OR [x].[DateTimeValue2] IS NULL)

