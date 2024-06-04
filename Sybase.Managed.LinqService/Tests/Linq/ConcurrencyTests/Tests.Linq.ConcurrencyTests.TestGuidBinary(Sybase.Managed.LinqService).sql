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
SET     @Stamp = 0xEF005D9FC396D14D8BE311D671FE9AE1
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
SET     @Stamp = 0x4C95135BBAF5E94F87B1F2A304DBA4B4
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0xEF005D9FC396D14D8BE311D671FE9AE1

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
SET     @Stamp = 0x9F45108C2182E44789C0F9DD60EDB085
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
SET     @Stamp = 0x4C95135BBAF5E94F87B1F2A304DBA4B4

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

