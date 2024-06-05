BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ConcurrencyGuidBinary]
(
	[Id]    Int           NOT NULL,
	[Stamp] Binary(16)        NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Value VarWChar(7) -- String
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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0x6FFC4B5B4AD30F469ABE7FFD64847117
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = 0x3D667BBCDE0F27438F925D8CC3A11D11

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = @Stamp,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp_1

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0x3410FDA0BD115345AEFA7FAC6115F594
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = 0x6FFC4B5B4AD30F469ABE7FFD64847117

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = @Stamp,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp_1

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0x1D3E16D685875441A759367B9DE5BA3F
DECLARE @Value VarWChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp_1 VarBinary(16) -- Binary
SET     @Stamp_1 = 0x0D6048A921DE744F8AC29516B287076E

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = @Stamp,
	[obj].[Value] = @Value
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp_1

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp VarBinary(16) -- Binary
SET     @Stamp = 0x3410FDA0BD115345AEFA7FAC6115F594

DELETE FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = @Id AND [obj].[Stamp] = @Stamp

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ConcurrencyGuidBinary]

