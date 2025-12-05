-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K1'
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V1'

INSERT INTO [SampleClass]
(
	[Id],
	[KeyValue2],
	[Value2]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K2'
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V2'

INSERT INTO [SampleClass]
(
	[Id],
	[KeyValue2],
	[Value2]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K3'
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V3'

INSERT INTO [SampleClass] AS [t1]
(
	[Id],
	[KeyValue2],
	[Value2]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)
ON CONFLICT ([Id], [KeyValue2]) DO UPDATE SET
	[Value2] = @Value

-- SQLite.MS SQLite
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V4'

INSERT INTO [SampleClassWithIdentity]
(
	[Value2]
)
VALUES
(
	@Value
)

-- SQLite.MS SQLite

SELECT last_insert_rowid()

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K1'

DELETE FROM
	[SampleClass]
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue2] = @StrKey

-- SQLite.MS SQLite
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'VU'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K2'

UPDATE
	[SampleClass]
SET
	[Value2] = @Value
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue2] = @StrKey

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[KeyValue2],
	[t1].[Value2]
FROM
	[SampleClass] [t1]

