BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyGuidBinary]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Binary(16)         NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'initial'

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
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x3306D9EFC4B6FA4EA3FCC2E8C98496A1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 1'
DECLARE @Id Int -- Int32
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
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x62B6C241707E46448E5713B69CF1D075
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0x3306D9EFC4B6FA4EA3FCC2E8C98496A1

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x2E51F8E7CEFB1843A315827CC0D0E47F
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 3'
DECLARE @Id Int -- Int32
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
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE [obj]
FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x62B6C241707E46448E5713B69CF1D075

DELETE [obj]
FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

