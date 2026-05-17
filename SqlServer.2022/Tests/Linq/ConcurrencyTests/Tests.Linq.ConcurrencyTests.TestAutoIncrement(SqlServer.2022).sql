-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'initial'

INSERT INTO [ConcurrencyAutoIncrement]
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

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- SqlServer.2022
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- SqlServer.2022
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- SqlServer.2022
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE [obj]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE [obj]
FROM
	[ConcurrencyAutoIncrement] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

