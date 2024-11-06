BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [IdentityOnlyField]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [IdentityOnlyField]
(
	[Id] Int  NOT NULL IDENTITY
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [IdentityOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id]
FROM
	[IdentityOnlyField] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [IdentityOnlyField]

