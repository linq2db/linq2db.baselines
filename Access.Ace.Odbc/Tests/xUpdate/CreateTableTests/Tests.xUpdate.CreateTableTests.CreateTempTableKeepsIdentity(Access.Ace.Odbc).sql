-- Access.Ace.Odbc AccessODBC
CREATE TABLE [TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TempIdentityRowTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Ace.Odbc AccessODBC
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- Access.Ace.Odbc AccessODBC
INSERT INTO [TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRowTMP] [t1]

-- Access.Ace.Odbc AccessODBC
DROP TABLE [TempIdentityRowTMP]

