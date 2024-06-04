BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyGuidBinary]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConcurrencyGuidBinary]
(
	[Id]    INTEGER       NOT NULL,
	[Stamp] Binary(16)        NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = X'08622CE2A41EB046B9E4AFE882B588B3'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 NVarChar(16) -- String
SET     @Stamp_1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = X'B0713C1A10568D47811FF049822C7D1A'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 NVarChar(16) -- String
SET     @Stamp_1 = X'08622CE2A41EB046B9E4AFE882B588B3'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = X'CC21C6EBFCD67B4A84A3185624CE9C4F'
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp_1 NVarChar(16) -- String
SET     @Stamp_1 = X'0D6048A921DE744F8AC29516B287076E'

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = X'A57339BD2343D84D9F4FDF9F93E2A627'

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = X'B0713C1A10568D47811FF049822C7D1A'

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyGuidBinary]

