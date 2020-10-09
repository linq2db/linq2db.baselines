BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Decimal(4,0)
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
	@ID,
	@MoneyValue,
	@SmallIntValue
)

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[t]
SET
	[t].[MoneyValue] = 2000,
	[t].[SmallIntValue] = 200
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = @ID

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 1001

SELECT TOP (@take) 
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
	[t].[ID] = @ID_1

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @ID

