-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value UniVarChar(7) -- String
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

-- Sybase.Managed Sybase
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[ConcurrencyRefreshNoLock]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshNoLock].[Id] = @Id

-- Sybase.Managed Sybase
SELECT TOP 2
	[r].[Id],
	[r].[Stamp],
	[r].[Value]
FROM
	[ConcurrencyRefreshNoLock] [r]
WHERE
	[r].[Id] = 1

