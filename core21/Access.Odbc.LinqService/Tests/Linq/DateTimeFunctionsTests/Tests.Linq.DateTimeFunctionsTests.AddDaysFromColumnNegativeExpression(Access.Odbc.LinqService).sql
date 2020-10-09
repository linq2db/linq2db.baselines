﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5000
DECLARE @MoneyValue VarChar(1,0) -- AnsiString
SET     @MoneyValue = 0
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2018-01-03#
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '{00000000-0000-0000-0000-000000000000}'
DECLARE @BinaryValue VarBinary -- Binary
SET     @BinaryValue = NULL
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = -2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[BoolValue],
	[GuidValue],
	[BinaryValue],
	[SmallIntValue],
	[StringValue]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @part1 Int -- Int32
SET     @part1 = 4
DECLARE @part2 Int -- Int32
SET     @part2 = 4
DECLARE @p1 DateTime
SET     @p1 = #2018-01-02#

SELECT 
	Count(*)
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 5000 AND DateAdd('d', ([t].[SmallIntValue] + ?) - ?, [t].[DateTimeValue]) < ?

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 5000

