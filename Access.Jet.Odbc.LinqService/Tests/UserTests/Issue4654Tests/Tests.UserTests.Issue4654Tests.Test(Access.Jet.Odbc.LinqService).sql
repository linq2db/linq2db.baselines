BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Customer]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4654Customer]
(
	[Id]   Int            NOT NULL IDENTITY,
	[Name] NVarChar(255)      NULL,

	CONSTRAINT [PK_Issue4654Customer] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Order]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4654Order]
(
	[Id]          Int            NOT NULL IDENTITY,
	[ProductName] NVarChar(255)      NULL,
	[Quantity]    Int            NOT NULL,
	[CustomerId]  Int            NOT NULL,

	CONSTRAINT [PK_Issue4654Order] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Product]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4654Product]
(
	[Id]    Int            NOT NULL IDENTITY,
	[Name]  NVarChar(255)      NULL,
	[Price] Decimal        NOT NULL,

	CONSTRAINT [PK_Issue4654Product] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	CStr([c_1].[Id]),
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CStr([o].[Id]),
	[o].[ProductName]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CStr([p].[Id]),
	[p].[Name]
FROM
	[Issue4654Product] [p]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Product]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Order]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Customer]

