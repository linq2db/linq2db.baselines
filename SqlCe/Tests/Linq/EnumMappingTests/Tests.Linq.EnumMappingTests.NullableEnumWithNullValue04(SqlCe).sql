BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 105

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value NVarChar(2) -- String
SET     @Value = '11'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @Value NVarChar(2) -- String
SET     @Value = '22'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 103
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 104
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[r].[ID] as [Id],
	[r].[StringValue] as [Value_1]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe

SELECT
	[r].[ID] as [Id],
	[r].[IntValue] as [Int32],
	[r].[StringValue] as [String]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 105

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

