BeforeExecute
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
	[KeyValue1],
	[Value1]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

BeforeExecute
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
	[KeyValue1],
	[Value1]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

BeforeExecute
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
	[KeyValue1],
	[Value1]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)
ON CONFLICT ([Id], [KeyValue1]) DO UPDATE SET
	[Value1] = @Value

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V4'

INSERT INTO [SampleClassWithIdentity]
(
	[Value1]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K1'

DELETE FROM
	[SampleClass]
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue1] = @StrKey

BeforeExecute
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
	[Value1] = @Value
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue1] = @StrKey

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[KeyValue1],
	[t1].[Value1]
FROM
	[SampleClass] [t1]

