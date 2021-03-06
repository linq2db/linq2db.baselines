﻿BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[SmallIntValue]
)
VALUES
(
	1001,
	1000,
	100
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[MoneyValue] = 2000,
	[LinqDataTypes].[SmallIntValue] = 200
WHERE
	[LinqDataTypes].[ID] = @ID

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1001

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] = @ID

