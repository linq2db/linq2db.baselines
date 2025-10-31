-- Access.Jet.OleDb AccessOleDb

DROP TABLE [FluentTemp]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[FluentTemp] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [FluentTemp]

