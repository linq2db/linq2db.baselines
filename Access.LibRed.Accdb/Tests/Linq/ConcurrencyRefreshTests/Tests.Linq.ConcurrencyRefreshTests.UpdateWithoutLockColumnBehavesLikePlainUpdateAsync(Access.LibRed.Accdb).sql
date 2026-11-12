-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshNoLock]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Stamp  -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[ConcurrencyRefreshNoLock] [obj]
SET
	[obj].[Stamp] = @Stamp,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[Stamp],
	[r].[Value]
FROM
	[ConcurrencyRefreshNoLock] [r]
WHERE
	[r].[Id] = 1

