-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 105

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value NChar(2) -- StringFixedLength
SET     @Value = N'11'

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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @Value NChar(2) -- StringFixedLength
SET     @Value = N'22'

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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 103
DECLARE @Value NChar -- StringFixedLength
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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 104
DECLARE @Value NChar -- StringFixedLength
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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[r].[ID],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

-- SqlServer.2012.MS SqlServer.2012

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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 105

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

