BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = '{ef129165-6ffe-4df9-bb6b-bb16e413c883}'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int32
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[MoneyValue] = ?,
	[t1].[DateTimeValue] = ?,
	[t1].[DateTimeValue2] = ?,
	[t1].[BoolValue] = ?,
	[t1].[GuidValue] = ?,
	[t1].[SmallIntValue] = ?,
	[t1].[IntValue] = ?,
	[t1].[BigIntValue] = ?,
	[t1].[StringValue] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID  -- Int32
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
	[r].[ID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = '{ef129165-6ffe-4df9-bb6b-bb16e413c883}'
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int32
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL
DECLARE @ID  -- Int32
SET     @ID = 1

UPDATE
	[LinqDataTypes] [t1]
SET
	[t1].[MoneyValue] = ?,
	[t1].[DateTimeValue] = ?,
	[t1].[DateTimeValue2] = ?,
	[t1].[BoolValue] = ?,
	[t1].[GuidValue] = ?,
	[t1].[SmallIntValue] = ?,
	[t1].[IntValue] = ?,
	[t1].[BigIntValue] = ?,
	[t1].[StringValue] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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

