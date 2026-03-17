-- Access.Jet.Odbc AccessODBC

DROP TABLE [FluentTemp]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

UPDATE
	[FluentTemp] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

-- Access.Jet.Odbc AccessODBC

DROP TABLE [FluentTemp]

