BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]        INTEGER      NOT NULL,
	[KeyValue1] NVarChar(50) NOT NULL,
	[Value1]    NVarChar(50)     NULL,

	CONSTRAINT [PK_SampleClass] PRIMARY KEY ([Id], [KeyValue1])
)

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

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]        INTEGER      NOT NULL,
	[KeyValue2] NVarChar(50) NOT NULL,
	[Value2]    NVarChar(50)     NULL,

	CONSTRAINT [PK_SampleClass] PRIMARY KEY ([Id], [KeyValue2])
)

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
	[KeyValue2],
	[Value2]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]         INTEGER      NOT NULL,
	[KeyValueF1] NVarChar(50) NOT NULL,
	[ValueF1]    NVarChar(50)     NULL,

	CONSTRAINT [PK_SampleClass] PRIMARY KEY ([Id], [KeyValueF1])
)

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
	[KeyValueF1],
	[ValueF1]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]         INTEGER      NOT NULL,
	[KeyValueF2] NVarChar(50) NOT NULL,
	[ValueF2]    NVarChar(50)     NULL,

	CONSTRAINT [PK_SampleClass] PRIMARY KEY ([Id], [KeyValueF2])
)

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
	[KeyValueF2],
	[ValueF2]
)
VALUES
(
	@Id,
	@StrKey,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

