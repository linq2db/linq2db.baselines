BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12

SELECT
	[entity].[ID],
	[entity].[BigIntValue]
FROM
	[LinqDataTypes] [entity]
WHERE
	[entity].[BigIntValue] = @TestField

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

