BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	11
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

UPDATE
	[LinqDataTypes]
SET
	[BigIntValue] = @TestField
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[BigIntValue] = 11

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

