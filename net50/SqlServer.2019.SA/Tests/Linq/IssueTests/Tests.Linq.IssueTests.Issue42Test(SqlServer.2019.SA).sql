﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2019.SA SqlServer.2017
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = '2001-01-11T01:11:21.1000000'
DECLARE @DateTimeValue2 DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar(255) -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t1]
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
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2019.SA SqlServer.2017
DECLARE @MoneyValue Decimal(5, 4)
SET     @MoneyValue = 1.1100
DECLARE @DateTimeValue DateTime2
SET     @DateTimeValue = '2001-01-11T01:11:21.1000000'
DECLARE @DateTimeValue2 DateTime2
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue BigInt -- Int64
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar(255) -- String
SET     @StringValue = NULL
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t1]
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
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = @ID

