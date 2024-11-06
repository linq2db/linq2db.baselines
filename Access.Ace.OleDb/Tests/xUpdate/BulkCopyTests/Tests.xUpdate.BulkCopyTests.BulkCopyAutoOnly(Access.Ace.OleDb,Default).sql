BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [IdentityOnlyField]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [IdentityOnlyField]
(
	[Id] Int  NOT NULL IDENTITY
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [IdentityOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id]
FROM
	[IdentityOnlyField] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [IdentityOnlyField]

