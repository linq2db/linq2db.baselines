BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyGuidBinary') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyGuidBinary') IS NULL)
	EXECUTE('
		CREATE TABLE [ConcurrencyGuidBinary]
		(
			[Id]    Int           NOT NULL,
			[Stamp] Binary(16)        NULL,
			[Value] NVarChar(255)     NULL,

			CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Value UniVarChar(7) -- String
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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x8975071C726D4D4295C4F7350D900599
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0x3D667BBCDE0F27438F925D8CC3A11D11

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x57A8B2F1C5D1E84BB5B7C5EDE7DFE79E
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0x8975071C726D4D4295C4F7350D900599

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x0A5156C5DA88284DBE00C3451D3D97EE
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0x0D6048A921DE744F8AC29516B287076E

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE FROM [ConcurrencyGuidBinary]
FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x57A8B2F1C5D1E84BB5B7C5EDE7DFE79E

DELETE FROM [ConcurrencyGuidBinary]
FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ConcurrencyGuidBinary') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

