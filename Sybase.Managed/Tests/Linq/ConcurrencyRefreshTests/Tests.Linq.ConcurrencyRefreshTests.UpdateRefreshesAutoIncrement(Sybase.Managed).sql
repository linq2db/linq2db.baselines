-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value UniVarChar(7) -- String
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

-- Sybase.Managed Sybase
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc]
SET
	[Stamp] = [ConcurrencyRefreshAutoInc].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshAutoInc].[Id] = @Id AND [ConcurrencyRefreshAutoInc].[Stamp] = @Stamp

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT TOP 1
	[obj].[Stamp]
FROM
	[ConcurrencyRefreshAutoInc] [obj]
WHERE
	[obj].[Id] = @Id

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyRefreshAutoInc] [t1]

