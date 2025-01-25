BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Date -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2 Date -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @GuidValue Guid
SET     @GuidValue = {guid {ef129165-6ffe-4df9-bb6b-bb16e413c883}}
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarWChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[MoneyValue] = @MoneyValue,
	[t1].[DateTimeValue] = @DateTimeValue,
	[t1].[DateTimeValue2] = @DateTimeValue2,
	[t1].[BoolValue] = @BoolValue,
	[t1].[GuidValue] = @GuidValue,
	[t1].[SmallIntValue] = @SmallIntValue,
	[t1].[IntValue] = @IntValue,
	[t1].[BigIntValue] = @BigIntValue,
	[t1].[StringValue] = @StringValue
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue Date -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2 Date -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Guid
SET     @GuidValue = {guid {ef129165-6ffe-4df9-bb6b-bb16e413c883}}
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue VarWChar -- String
SET     @StringValue = NULL
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[MoneyValue] = @MoneyValue,
	[t1].[DateTimeValue] = @DateTimeValue,
	[t1].[DateTimeValue2] = @DateTimeValue2,
	[t1].[BoolValue] = @BoolValue,
	[t1].[GuidValue] = @GuidValue,
	[t1].[SmallIntValue] = @SmallIntValue,
	[t1].[IntValue] = @IntValue,
	[t1].[BigIntValue] = @BigIntValue,
	[t1].[StringValue] = @StringValue
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[r].[ID],
	[r].[MoneyValue],
	[r].[DateTimeValue],
	[r].[DateTimeValue2],
	[r].[BoolValue],
	[r].[GuidValue],
	[r].[SmallIntValue],
	[r].[IntValue],
	[r].[BigIntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 1

