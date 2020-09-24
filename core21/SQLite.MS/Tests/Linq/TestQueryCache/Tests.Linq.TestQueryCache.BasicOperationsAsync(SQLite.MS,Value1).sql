BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClass]
(
	[Id]        INTEGER      NOT NULL,
	[KeyValue1] NVarChar(50)     NULL,
	[Value1]    NVarChar(50)     NULL,

	CONSTRAINT [PK_SampleClass] PRIMARY KEY ([Id], [KeyValue1])
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClassWithIdentity]
(
	[Id]     INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value1] NVarChar(50)      NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K1'
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'V1'

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
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K2'
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'V2'

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
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'V3'
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K3'

UPDATE
	[SampleClass]
SET
	[Value1] = @Value_1
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue1] = @StrKey

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K3'
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'V3'

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
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'V4'

INSERT INTO [SampleClassWithIdentity]
(
	[Value1]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K1'

DELETE FROM
	[SampleClass]
WHERE
	[SampleClass].[Id] = @Id AND [SampleClass].[KeyValue1] = @StrKey

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value_1 NVarChar(2) -- String
SET     @Value_1 = 'VU'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StrKey NVarChar(2) -- String
SET     @StrKey = 'K2'

UPDATE
	[SampleClass]
SET
	[Value1] = @Value_1
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

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClassWithIdentity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClass]

