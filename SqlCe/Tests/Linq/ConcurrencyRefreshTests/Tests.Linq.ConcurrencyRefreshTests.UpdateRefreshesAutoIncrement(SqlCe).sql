-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshAutoInc]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- SqlCe
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc]
SET
	[Stamp] = [ConcurrencyRefreshAutoInc].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshAutoInc].[Id] = @Id AND [ConcurrencyRefreshAutoInc].[Stamp] = @Stamp

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT TOP (1)
	[obj].[Stamp]
FROM
	[ConcurrencyRefreshAutoInc] [obj]
WHERE
	[obj].[Id] = @Id

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyRefreshAutoInc] [t1]

