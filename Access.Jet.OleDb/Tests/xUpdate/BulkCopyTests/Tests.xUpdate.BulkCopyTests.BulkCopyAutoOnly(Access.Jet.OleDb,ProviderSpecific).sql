BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [IdentityOnlyField]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [IdentityOnlyField]
(
	[Id] Int  NOT NULL IDENTITY
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [IdentityOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id]
FROM
	[IdentityOnlyField] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [IdentityOnlyField]

