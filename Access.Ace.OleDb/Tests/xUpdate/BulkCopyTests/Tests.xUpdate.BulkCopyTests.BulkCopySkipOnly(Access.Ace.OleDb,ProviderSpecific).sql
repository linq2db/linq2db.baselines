BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SkipOnlyField]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SkipOnlyField]
(
	[Id] Int     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [SkipOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id]
FROM
	[SkipOnlyField] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SkipOnlyField]

