BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SkipOnlyField]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SkipOnlyField]
(
	[Id] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [SkipOnlyField] DEFAULT VALUES

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id]
FROM
	[SkipOnlyField] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SkipOnlyField]

