BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Customer]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4654Customer]
(
	[Id]   Int            NOT NULL IDENTITY,
	[Name] NVarChar(255)      NULL
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
	[CustomerId]  Int            NOT NULL
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
	[Price] Decimal        NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Product]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Order]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4654Customer]

