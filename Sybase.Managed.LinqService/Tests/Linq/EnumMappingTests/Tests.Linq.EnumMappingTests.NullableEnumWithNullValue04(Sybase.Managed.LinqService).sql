BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 105

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value UniChar(2) -- StringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value UniChar(2) -- StringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value UniChar -- StringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 104
DECLARE @Value UniChar -- StringFixedLength
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
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 105

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

