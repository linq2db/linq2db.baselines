﻿BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value Int -- Int32
SET     @Value = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
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
DECLARE @Value Int -- Int32
SET     @Value = 22

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
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
DECLARE @Value Int -- Int32
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
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
DECLARE @Value Int -- Int32
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
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
	[r].[IntValue] as [Value_1]
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
DECLARE @Id Int -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @Id

