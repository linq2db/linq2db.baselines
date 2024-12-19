BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [IdentityOnlyField]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [IdentityOnlyField]
(
	[Id] Int  NOT NULL IDENTITY
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [IdentityOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id]
FROM
	[IdentityOnlyField] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [IdentityOnlyField]

