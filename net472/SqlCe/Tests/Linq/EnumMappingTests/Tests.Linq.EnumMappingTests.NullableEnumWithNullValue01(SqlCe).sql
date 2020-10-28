BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 104

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 22

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 103
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[IntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 103
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[IntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 103
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 104

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p1

