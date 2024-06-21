BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MessageEventDTO]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [MessageEventDTO]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [MessageEventDTOTb2]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MessageEventDTO]

