BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcurrencyGuidBinary]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConcurrencyGuidBinary]
(
	[Id]    INTEGER       NOT NULL,
	[Stamp] Binary(16)        NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyGuidBinary]
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

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Stamp Binary(16)
SET     @Stamp = X'C328911276DF224CA1645BAD85DAA5D5'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Stamp Binary(16)
SET     @Stamp = X'62A90B656B27F944B27563A8CD854E6D'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'C328911276DF224CA1645BAD85DAA5D5'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Stamp Binary(16)
SET     @Stamp = X'E84A580AD91CFD4FB2A394925D106A69'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = X'0D6048A921DE744F8AC29516B287076E'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'A57339BD2343D84D9F4FDF9F93E2A627'

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = X'62A90B656B27F944B27563A8CD854E6D'

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcurrencyGuidBinary]

