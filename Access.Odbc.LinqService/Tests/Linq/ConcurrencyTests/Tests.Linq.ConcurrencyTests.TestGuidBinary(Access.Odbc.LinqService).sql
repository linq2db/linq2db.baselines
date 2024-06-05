BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ConcurrencyGuidBinary]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ConcurrencyGuidBinary]
(
	[Id]    Int           NOT NULL,
	[Stamp] Binary(16)        NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyGuidBinary] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
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
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0x624E16A59B14D44B8FE714CAC2C2ECE6
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = ?,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0xDA1D23B9256C35468D3E1B15CAB36543
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0x624E16A59B14D44B8FE714CAC2C2ECE6

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = ?,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0x71B7A88D49028D4AA176F1C75575BE95
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0x0D6048A921DE744F8AC29516B287076E

UPDATE
	[ConcurrencyGuidBinary] [obj]
SET
	[obj].[Stamp] = ?,
	[obj].[Value] = ?
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp NVarChar(16) -- String
SET     @Stamp = 0xDA1D23B9256C35468D3E1B15CAB36543

DELETE FROM
	[ConcurrencyGuidBinary] [obj]
WHERE
	[obj].[Id] = ? AND [obj].[Stamp] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyGuidBinary] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ConcurrencyGuidBinary]

