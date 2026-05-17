-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp_InsertOrUpdate]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp_InsertOrUpdate]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

-- Access.Ace.OleDb AccessOleDb

UPDATE
	[FluentTemp_InsertOrUpdate] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp_InsertOrUpdate]

