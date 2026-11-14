-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc] [obj]
SET
	[obj].[Stamp] = [obj].[Stamp] + 1,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT TOP 1
	[obj].[Stamp]
FROM
	[ConcurrencyRefreshAutoInc] [obj]
WHERE
	[obj].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyRefreshAutoInc] [t1]

