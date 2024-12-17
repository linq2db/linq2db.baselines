BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TableWithIdentitySrc]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TableWithIdentitySrc]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentitySrc] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TableWithIdentity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TableWithIdentitySrc]

