﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 105

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[ID],
	[r].[IntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[ID],
	[r].[IntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 105

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

