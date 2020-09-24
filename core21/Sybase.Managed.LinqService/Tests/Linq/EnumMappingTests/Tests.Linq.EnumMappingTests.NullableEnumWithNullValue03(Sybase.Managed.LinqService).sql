BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 104

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value_1 UniChar(2) -- StringFixedLength
SET     @Value_1 = '11'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value_1 UniChar(2) -- StringFixedLength
SET     @Value_1 = '22'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value_1 UniChar -- StringFixedLength
SET     @Value_1 = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 103
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
	[r].[ID] >= 101 AND [r].[ID] <= 103
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 104

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

