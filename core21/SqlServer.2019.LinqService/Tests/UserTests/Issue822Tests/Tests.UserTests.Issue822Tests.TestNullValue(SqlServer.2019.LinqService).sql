﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id_1 Int -- Int32
SET     @id_1 = 3

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
	EXISTS(
		SELECT
			*
		FROM
			[LinqDataTypes] [_1]
		WHERE
			[_1].[ID] = @id_1 AND [_1].[ID] = [_].[ID]
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id_1 Int -- Int32
SET     @id_1 = 4

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
	EXISTS(
		SELECT
			*
		FROM
			[LinqDataTypes] [_1]
		WHERE
			[_1].[ID] = @id_1 AND [_1].[ID] = [_].[ID]
	)

