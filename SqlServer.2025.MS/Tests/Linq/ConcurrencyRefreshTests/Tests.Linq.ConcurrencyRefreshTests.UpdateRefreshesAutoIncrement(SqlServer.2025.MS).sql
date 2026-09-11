-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'initial'

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

-- SqlServer.2025.MS SqlServer.2025
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'updated'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc]
SET
	[Stamp] = [ConcurrencyRefreshAutoInc].[Stamp] + 1,
	[Value] = @Value
OUTPUT
	INSERTED.[Stamp]
WHERE
	[ConcurrencyRefreshAutoInc].[Id] = @Id AND [ConcurrencyRefreshAutoInc].[Stamp] = @Stamp

-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyRefreshAutoInc] [t1]

