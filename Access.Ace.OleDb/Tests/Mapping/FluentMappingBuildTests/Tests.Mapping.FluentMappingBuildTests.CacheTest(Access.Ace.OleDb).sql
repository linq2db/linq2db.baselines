-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]       Int          NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]       Int          NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]

