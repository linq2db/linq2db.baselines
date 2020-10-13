BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1001
DECLARE @MoneyValue VarChar(4, 0) -- AnsiString
SET     @MoneyValue = 1000
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 100

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[MoneyValue] = 2000,
	[t].[SmallIntValue] = 200
WHERE
	[t].[ID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 1001

SELECT TOP 2
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
	[t].[ID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = ?

