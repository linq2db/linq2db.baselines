BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp] [t]
SET
	[t].[Value] = @Name,
	[t].[LastName] = @LastName
WHERE
	[t].[ID] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [FluentTemp]

