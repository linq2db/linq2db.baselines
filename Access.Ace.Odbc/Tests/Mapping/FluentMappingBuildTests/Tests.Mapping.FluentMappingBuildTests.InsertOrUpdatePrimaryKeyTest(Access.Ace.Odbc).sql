-- Access.Ace.Odbc AccessODBC

DROP TABLE [FluentTemp_InsertOrUpdate]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [FluentTemp_InsertOrUpdate]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
(
	[ID],
	[Name]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC

UPDATE
	[FluentTemp_InsertOrUpdate] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

-- Access.Ace.Odbc AccessODBC

DROP TABLE [FluentTemp_InsertOrUpdate]

