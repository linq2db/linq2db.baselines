BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	101,
	3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[LinqDataTypes]
SET
	[IntValue] = 4
WHERE
	[LinqDataTypes].[ID] = 101 AND [LinqDataTypes].[IntValue] = 3

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

