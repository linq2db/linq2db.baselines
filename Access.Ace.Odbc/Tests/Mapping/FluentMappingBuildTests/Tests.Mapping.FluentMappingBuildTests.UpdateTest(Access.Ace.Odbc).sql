-- Access.Ace.Odbc AccessODBC

CREATE TABLE [FluentTemp_Update]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Update] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Update]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_Update] [t]
SET
	[t].[Value] = ?,
	[t].[LastName] = ?
WHERE
	[t].[ID] = 1

-- Access.Ace.Odbc AccessODBC

DROP TABLE [FluentTemp_Update]

