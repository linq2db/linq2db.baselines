BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NULL)
	CREATE TABLE [ConcurrencyGuidBinary]
	(
		[Id]    Int            NOT NULL,
		[Stamp] Binary(16)         NULL,
		[Value] NVarChar(4000)     NULL,

		CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xE5E00D50F6A2D3489D5D21E54A369E6D
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x90552B91E8A0DD4A9D6CB342BDB6279A
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0xE5E00D50F6A2D3489D5D21E54A369E6D

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xCB93D95E0FA38B499BF6B59B474B87D9
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x90552B91E8A0DD4A9D6CB342BDB6279A

DELETE [obj]
FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ConcurrencyGuidBinary]', N'U') IS NOT NULL)
	DROP TABLE [ConcurrencyGuidBinary]

