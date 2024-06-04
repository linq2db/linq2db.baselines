BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcurrencyGuidBinary]
(
	[Id]    Int           NOT NULL,
	[Stamp] BINARY(16)        NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11
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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xA252C68FE2363446889628063D00A3FF
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x6D058FC4A651D04CBB83DECA90FB9476
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp_1 Binary(16)
SET     @Stamp_1 = 0xA252C68FE2363446889628063D00A3FF

UPDATE
	[ConcurrencyGuidBinary]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp_1

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x79CF5839C2A2D5459A74699E0711C1F7
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Binary(16)
SET     @Stamp = 0x6D058FC4A651D04CBB83DECA90FB9476

DELETE FROM
	[ConcurrencyGuidBinary]
WHERE
	[ConcurrencyGuidBinary].[Id] = @Id AND [ConcurrencyGuidBinary].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyGuidBinary]

