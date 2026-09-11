-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'initial'

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[ConcurrencyRefreshNoLock]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshNoLock].[Id] = @Id

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[r].[Id],
	[r].[Stamp],
	[r].[Value]
FROM
	[ConcurrencyRefreshNoLock] [r]
WHERE
	[r].[Id] = 1

