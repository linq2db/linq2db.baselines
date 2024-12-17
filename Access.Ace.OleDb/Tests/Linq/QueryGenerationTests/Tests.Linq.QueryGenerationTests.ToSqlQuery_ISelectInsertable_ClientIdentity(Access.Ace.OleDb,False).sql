BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentitySrc]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TableWithIdentitySrc]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentitySrc] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
SELECT
	345,
	[t1].[Value] + @addition
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TableWithIdentitySrc]

