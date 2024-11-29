BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SkipOnlyField]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SkipOnlyField]
(
	[Id] Int     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [SkipOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id]
FROM
	[SkipOnlyField] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SkipOnlyField]

